
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct i2400mu {int i2400m; } ;


 int i2400m_pre_reset (int *) ;
 struct i2400mu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static
int i2400mu_pre_reset(struct usb_interface *iface)
{
 struct i2400mu *i2400mu = usb_get_intfdata(iface);
 return i2400m_pre_reset(&i2400mu->i2400m);
}
