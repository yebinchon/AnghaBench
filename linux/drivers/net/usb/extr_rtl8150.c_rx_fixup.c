
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct rtl8150 {int tl; int flags; int netdev; int rx_urb; struct sk_buff* rx_skb; int udev; int rx_pool_lock; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int RTL8150_MTU ;
 int RX_URB_FAIL ;
 int clear_bit (int ,int *) ;
 int fill_skb_pool (struct rtl8150*) ;
 int netif_device_detach (int ) ;
 struct sk_buff* pull_skb (struct rtl8150*) ;
 int read_bulk_callback ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_fill_bulk_urb (int ,int ,int ,int ,int ,int ,struct rtl8150*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void rx_fixup(unsigned long data)
{
 struct rtl8150 *dev = (struct rtl8150 *)data;
 struct sk_buff *skb;
 int status;

 spin_lock_irq(&dev->rx_pool_lock);
 fill_skb_pool(dev);
 spin_unlock_irq(&dev->rx_pool_lock);
 if (test_bit(RX_URB_FAIL, &dev->flags))
  if (dev->rx_skb)
   goto try_again;
 spin_lock_irq(&dev->rx_pool_lock);
 skb = pull_skb(dev);
 spin_unlock_irq(&dev->rx_pool_lock);
 if (skb == ((void*)0))
  goto tlsched;
 dev->rx_skb = skb;
 usb_fill_bulk_urb(dev->rx_urb, dev->udev, usb_rcvbulkpipe(dev->udev, 1),
        dev->rx_skb->data, RTL8150_MTU, read_bulk_callback, dev);
try_again:
 status = usb_submit_urb(dev->rx_urb, GFP_ATOMIC);
 if (status == -ENODEV) {
  netif_device_detach(dev->netdev);
 } else if (status) {
  set_bit(RX_URB_FAIL, &dev->flags);
  goto tlsched;
 } else {
  clear_bit(RX_URB_FAIL, &dev->flags);
 }

 return;
tlsched:
 tasklet_schedule(&dev->tl);
}
