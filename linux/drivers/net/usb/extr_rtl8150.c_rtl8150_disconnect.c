
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_6__ {int netdev; int intr_buff; int rx_skb; int tl; int flags; } ;
typedef TYPE_1__ rtl8150_t ;


 int RTL8150_UNPLUG ;
 int dev_kfree_skb (int ) ;
 int free_all_urbs (TYPE_1__*) ;
 int free_netdev (int ) ;
 int free_skb_pool (TYPE_1__*) ;
 int kfree (int ) ;
 int set_bit (int ,int *) ;
 int tasklet_kill (int *) ;
 int unlink_all_urbs (TYPE_1__*) ;
 int unregister_netdev (int ) ;
 TYPE_1__* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void rtl8150_disconnect(struct usb_interface *intf)
{
 rtl8150_t *dev = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));
 if (dev) {
  set_bit(RTL8150_UNPLUG, &dev->flags);
  tasklet_kill(&dev->tl);
  unregister_netdev(dev->netdev);
  unlink_all_urbs(dev);
  free_all_urbs(dev);
  free_skb_pool(dev);
  dev_kfree_skb(dev->rx_skb);
  kfree(dev->intr_buff);
  free_netdev(dev->netdev);
 }
}
