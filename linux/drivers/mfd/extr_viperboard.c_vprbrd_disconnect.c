
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vprbrd {int usb_dev; } ;
struct usb_interface {int dev; } ;


 int dev_dbg (int *,char*) ;
 int kfree (struct vprbrd*) ;
 int mfd_remove_devices (int *) ;
 struct vprbrd* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void vprbrd_disconnect(struct usb_interface *interface)
{
 struct vprbrd *vb = usb_get_intfdata(interface);

 mfd_remove_devices(&interface->dev);
 usb_set_intfdata(interface, ((void*)0));
 usb_put_dev(vb->usb_dev);
 kfree(vb);

 dev_dbg(&interface->dev, "disconnected\n");
}
