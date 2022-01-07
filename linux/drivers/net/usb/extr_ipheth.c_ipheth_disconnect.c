
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct ipheth_device {int net; int ctrl_buf; } ;


 int dev_info (int *,char*) ;
 int free_netdev (int ) ;
 int ipheth_free_urbs (struct ipheth_device*) ;
 int ipheth_kill_urbs (struct ipheth_device*) ;
 int kfree (int ) ;
 int unregister_netdev (int ) ;
 struct ipheth_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void ipheth_disconnect(struct usb_interface *intf)
{
 struct ipheth_device *dev;

 dev = usb_get_intfdata(intf);
 if (dev != ((void*)0)) {
  unregister_netdev(dev->net);
  ipheth_kill_urbs(dev);
  ipheth_free_urbs(dev);
  kfree(dev->ctrl_buf);
  free_netdev(dev->net);
 }
 usb_set_intfdata(intf, ((void*)0));
 dev_info(&intf->dev, "Apple iPhone USB Ethernet now disconnected\n");
}
