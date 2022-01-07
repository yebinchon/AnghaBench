
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct peak_usb_device {TYPE_1__* adapter; int * next_siblings; int cmd_buf; int state; struct peak_usb_device* prev_siblings; struct net_device* netdev; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int (* dev_free ) (struct peak_usb_device*) ;} ;


 int IFNAMSIZ ;
 int PCAN_USB_STATE_CONNECTED ;
 int dev_info (int *,char*,char*) ;
 int free_candev (struct net_device*) ;
 int kfree (int ) ;
 int strlcpy (char*,int ,int) ;
 int stub1 (struct peak_usb_device*) ;
 int unregister_netdev (struct net_device*) ;
 struct peak_usb_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void peak_usb_disconnect(struct usb_interface *intf)
{
 struct peak_usb_device *dev;
 struct peak_usb_device *dev_prev_siblings;


 for (dev = usb_get_intfdata(intf); dev; dev = dev_prev_siblings) {
  struct net_device *netdev = dev->netdev;
  char name[IFNAMSIZ];

  dev_prev_siblings = dev->prev_siblings;
  dev->state &= ~PCAN_USB_STATE_CONNECTED;
  strlcpy(name, netdev->name, IFNAMSIZ);

  unregister_netdev(netdev);

  kfree(dev->cmd_buf);
  dev->next_siblings = ((void*)0);
  if (dev->adapter->dev_free)
   dev->adapter->dev_free(dev);

  free_candev(netdev);
  dev_info(&intf->dev, "%s removed\n", name);
 }

 usb_set_intfdata(intf, ((void*)0));
}
