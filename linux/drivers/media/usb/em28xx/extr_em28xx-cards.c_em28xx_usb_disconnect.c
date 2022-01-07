
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct em28xx {int disconnected; int ref; struct em28xx* dev_next; int name; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*,int ) ;
 int em28xx_close_extension (struct em28xx*) ;
 int em28xx_free_device ;
 int em28xx_release_resources (struct em28xx*) ;
 int flush_request_modules (struct em28xx*) ;
 int kref_put (int *,int ) ;
 struct em28xx* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void em28xx_usb_disconnect(struct usb_interface *intf)
{
 struct em28xx *dev;

 dev = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));

 if (!dev)
  return;

 if (dev->dev_next) {
  dev->dev_next->disconnected = 1;
  dev_info(&dev->intf->dev, "Disconnecting %s\n",
    dev->dev_next->name);
 }

 dev->disconnected = 1;

 dev_info(&dev->intf->dev, "Disconnecting %s\n", dev->name);

 flush_request_modules(dev);

 em28xx_close_extension(dev);

 if (dev->dev_next)
  em28xx_release_resources(dev->dev_next);
 em28xx_release_resources(dev);

 if (dev->dev_next) {
  kref_put(&dev->dev_next->ref, em28xx_free_device);
  dev->dev_next = ((void*)0);
 }
 kref_put(&dev->ref, em28xx_free_device);
}
