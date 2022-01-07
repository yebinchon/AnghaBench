
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dln2_dev {int dummy; } ;
typedef int pm_message_t ;


 int dln2_stop (struct dln2_dev*) ;
 struct dln2_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int dln2_suspend(struct usb_interface *iface, pm_message_t message)
{
 struct dln2_dev *dln2 = usb_get_intfdata(iface);

 dln2_stop(dln2);

 return 0;
}
