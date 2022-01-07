
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usbnet {int stats64; int padding_pkt; int interrupt; TYPE_4__* driver_info; int deferred; int kevent; struct net_device* net; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct usb_interface {TYPE_2__ dev; } ;
struct usb_device {int devpath; TYPE_3__* bus; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int (* unbind ) (struct usbnet*,struct usb_interface*) ;int description; } ;
struct TYPE_7__ {int bus_name; } ;
struct TYPE_5__ {int name; } ;


 int cancel_work_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int free_percpu (int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (int ) ;
 int netif_info (struct usbnet*,int ,struct net_device*,char*,int ,int ,int ,int ) ;
 int probe ;
 int stub1 (struct usbnet*,struct usb_interface*) ;
 int unregister_netdev (struct net_device*) ;
 int usb_free_urb (int ) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_scuttle_anchored_urbs (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

void usbnet_disconnect (struct usb_interface *intf)
{
 struct usbnet *dev;
 struct usb_device *xdev;
 struct net_device *net;

 dev = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));
 if (!dev)
  return;

 xdev = interface_to_usbdev (intf);

 netif_info(dev, probe, dev->net, "unregister '%s' usb-%s-%s, %s\n",
     intf->dev.driver->name,
     xdev->bus->bus_name, xdev->devpath,
     dev->driver_info->description);

 net = dev->net;
 unregister_netdev (net);

 cancel_work_sync(&dev->kevent);

 usb_scuttle_anchored_urbs(&dev->deferred);

 if (dev->driver_info->unbind)
  dev->driver_info->unbind (dev, intf);

 usb_kill_urb(dev->interrupt);
 usb_free_urb(dev->interrupt);
 kfree(dev->padding_pkt);

 free_percpu(dev->stats64);
 free_netdev(net);
}
