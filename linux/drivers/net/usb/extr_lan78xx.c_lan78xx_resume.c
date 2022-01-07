
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {int dummy; } ;
struct urb {scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int lock; } ;
struct lan78xx_net {int delta; scalar_t__ tx_qlen; int bh; int net; TYPE_1__ txq; int flags; int intf; int deferred; struct urb* urb_intr; int suspend_count; int stat_monitor; } ;


 int EVENT_DEV_ASLEEP ;
 int EVENT_DEV_OPEN ;
 int GFP_ATOMIC ;
 int GFP_NOIO ;
 int MAC_TX ;
 int MAC_TX_TXEN_ ;
 scalar_t__ STAT_UPDATE_TIMER ;
 int WK_SRC ;
 int WUCSR ;
 int WUCSR2 ;
 int WUCSR2_ARP_RCD_ ;
 int WUCSR2_IPV4_TCPSYN_RCD_ ;
 int WUCSR2_IPV6_TCPSYN_RCD_ ;
 int WUCSR2_NS_RCD_ ;
 int WUCSR_BCST_FR_ ;
 int WUCSR_EEE_RX_WAKE_ ;
 int WUCSR_EEE_TX_WAKE_ ;
 int WUCSR_MPR_ ;
 int WUCSR_PFDA_FR_ ;
 int WUCSR_RFE_WAKE_FR_ ;
 int WUCSR_WUFR_ ;
 int clear_bit (int ,int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int lan78xx_queue_skb (TYPE_1__*,struct sk_buff*,int ) ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 int netif_start_queue (int ) ;
 int netif_trans_update (int ) ;
 scalar_t__ skb_queue_len (TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int timer_pending (int *) ;
 int tx_start ;
 int usb_autopm_put_interface_async (int ) ;
 int usb_free_urb (struct urb*) ;
 struct urb* usb_get_from_anchor (int *) ;
 struct lan78xx_net* usb_get_intfdata (struct usb_interface*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int lan78xx_resume(struct usb_interface *intf)
{
 struct lan78xx_net *dev = usb_get_intfdata(intf);
 struct sk_buff *skb;
 struct urb *res;
 int ret;
 u32 buf;

 if (!timer_pending(&dev->stat_monitor)) {
  dev->delta = 1;
  mod_timer(&dev->stat_monitor,
     jiffies + STAT_UPDATE_TIMER);
 }

 if (!--dev->suspend_count) {

  if (dev->urb_intr && test_bit(EVENT_DEV_OPEN, &dev->flags))
    usb_submit_urb(dev->urb_intr, GFP_NOIO);

  spin_lock_irq(&dev->txq.lock);
  while ((res = usb_get_from_anchor(&dev->deferred))) {
   skb = (struct sk_buff *)res->context;
   ret = usb_submit_urb(res, GFP_ATOMIC);
   if (ret < 0) {
    dev_kfree_skb_any(skb);
    usb_free_urb(res);
    usb_autopm_put_interface_async(dev->intf);
   } else {
    netif_trans_update(dev->net);
    lan78xx_queue_skb(&dev->txq, skb, tx_start);
   }
  }

  clear_bit(EVENT_DEV_ASLEEP, &dev->flags);
  spin_unlock_irq(&dev->txq.lock);

  if (test_bit(EVENT_DEV_OPEN, &dev->flags)) {
   if (!(skb_queue_len(&dev->txq) >= dev->tx_qlen))
    netif_start_queue(dev->net);
   tasklet_schedule(&dev->bh);
  }
 }

 ret = lan78xx_write_reg(dev, WUCSR2, 0);
 ret = lan78xx_write_reg(dev, WUCSR, 0);
 ret = lan78xx_write_reg(dev, WK_SRC, 0xFFF1FF1FUL);

 ret = lan78xx_write_reg(dev, WUCSR2, WUCSR2_NS_RCD_ |
          WUCSR2_ARP_RCD_ |
          WUCSR2_IPV6_TCPSYN_RCD_ |
          WUCSR2_IPV4_TCPSYN_RCD_);

 ret = lan78xx_write_reg(dev, WUCSR, WUCSR_EEE_TX_WAKE_ |
         WUCSR_EEE_RX_WAKE_ |
         WUCSR_PFDA_FR_ |
         WUCSR_RFE_WAKE_FR_ |
         WUCSR_WUFR_ |
         WUCSR_MPR_ |
         WUCSR_BCST_FR_);

 ret = lan78xx_read_reg(dev, MAC_TX, &buf);
 buf |= MAC_TX_TXEN_;
 ret = lan78xx_write_reg(dev, MAC_TX, buf);

 return 0;
}
