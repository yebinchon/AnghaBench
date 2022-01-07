
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct net_device {int dummy; } ;
struct esd_usb2 {int net_count; TYPE_1__** nets; } ;
struct TYPE_2__ {struct net_device* netdev; } ;


 int dev_attr_firmware ;
 int dev_attr_hardware ;
 int dev_attr_nets ;
 int device_remove_file (int *,int *) ;
 int free_candev (struct net_device*) ;
 int kfree (struct esd_usb2*) ;
 int unlink_all_urbs (struct esd_usb2*) ;
 int unregister_netdev (struct net_device*) ;
 struct esd_usb2* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void esd_usb2_disconnect(struct usb_interface *intf)
{
 struct esd_usb2 *dev = usb_get_intfdata(intf);
 struct net_device *netdev;
 int i;

 device_remove_file(&intf->dev, &dev_attr_firmware);
 device_remove_file(&intf->dev, &dev_attr_hardware);
 device_remove_file(&intf->dev, &dev_attr_nets);

 usb_set_intfdata(intf, ((void*)0));

 if (dev) {
  for (i = 0; i < dev->net_count; i++) {
   if (dev->nets[i]) {
    netdev = dev->nets[i]->netdev;
    unregister_netdev(netdev);
    free_candev(netdev);
   }
  }
  unlink_all_urbs(dev);
  kfree(dev);
 }
}
