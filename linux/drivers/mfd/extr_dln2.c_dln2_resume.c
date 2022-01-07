
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dln2_dev {int disconnect; } ;


 int GFP_NOIO ;
 int dln2_start_rx_urbs (struct dln2_dev*,int ) ;
 struct dln2_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int dln2_resume(struct usb_interface *iface)
{
 struct dln2_dev *dln2 = usb_get_intfdata(iface);

 dln2->disconnect = 0;

 return dln2_start_rx_urbs(dln2, GFP_NOIO);
}
