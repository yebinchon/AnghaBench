
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qlen; int lock; } ;
struct usbnet {int flags; int bh; int net; TYPE_1__ txq; int delay; int intf; int deferred; int suspend_count; } ;
struct usb_interface {int dummy; } ;
struct urb {int sg; scalar_t__ context; } ;
struct sk_buff {int dummy; } ;


 int EVENT_DEVICE_REPORT_IDLE ;
 int EVENT_DEV_ASLEEP ;
 int EVENT_DEV_OPEN ;
 int EVENT_RX_HALT ;
 int GFP_ATOMIC ;
 int GFP_NOIO ;
 scalar_t__ TX_QLEN (struct usbnet*) ;
 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 int __usbnet_status_start_force (struct usbnet*,int ) ;
 int clear_bit (int ,int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int kfree (int ) ;
 scalar_t__ netif_device_present (int ) ;
 int netif_trans_update (int ) ;
 int netif_tx_wake_all_queues (int ) ;
 int rx_alloc_submit (struct usbnet*,int ) ;
 int smp_mb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int timer_pending (int *) ;
 int usb_autopm_get_interface_no_resume (struct usb_interface*) ;
 int usb_autopm_put_interface_async (int ) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (struct urb*,int ) ;

int usbnet_resume (struct usb_interface *intf)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 struct sk_buff *skb;
 struct urb *res;
 int retval;

 if (!--dev->suspend_count) {

  __usbnet_status_start_force(dev, GFP_NOIO);

  spin_lock_irq(&dev->txq.lock);
  while ((res = usb_get_from_anchor(&dev->deferred))) {

   skb = (struct sk_buff *)res->context;
   retval = usb_submit_urb(res, GFP_ATOMIC);
   if (retval < 0) {
    dev_kfree_skb_any(skb);
    kfree(res->sg);
    usb_free_urb(res);
    usb_autopm_put_interface_async(dev->intf);
   } else {
    netif_trans_update(dev->net);
    __skb_queue_tail(&dev->txq, skb);
   }
  }

  smp_mb();
  clear_bit(EVENT_DEV_ASLEEP, &dev->flags);
  spin_unlock_irq(&dev->txq.lock);

  if (test_bit(EVENT_DEV_OPEN, &dev->flags)) {



   if (netif_device_present(dev->net) &&
    !timer_pending(&dev->delay) &&
    !test_bit(EVENT_RX_HALT, &dev->flags))
     rx_alloc_submit(dev, GFP_NOIO);

   if (!(dev->txq.qlen >= TX_QLEN(dev)))
    netif_tx_wake_all_queues(dev->net);
   tasklet_schedule (&dev->bh);
  }
 }

 if (test_and_clear_bit(EVENT_DEVICE_REPORT_IDLE, &dev->flags))
  usb_autopm_get_interface_no_resume(intf);

 return 0;
}
