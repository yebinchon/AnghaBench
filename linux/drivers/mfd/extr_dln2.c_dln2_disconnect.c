
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct dln2_dev {int dummy; } ;


 int dln2_free (struct dln2_dev*) ;
 int dln2_stop (struct dln2_dev*) ;
 int mfd_remove_devices (int *) ;
 struct dln2_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void dln2_disconnect(struct usb_interface *interface)
{
 struct dln2_dev *dln2 = usb_get_intfdata(interface);

 dln2_stop(dln2);

 mfd_remove_devices(&interface->dev);

 dln2_free(dln2);
}
