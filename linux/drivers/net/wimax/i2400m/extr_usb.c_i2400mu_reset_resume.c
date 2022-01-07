
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct i2400m {int dummy; } ;
struct i2400mu {struct i2400m i2400m; } ;


 int d_fnend (int,struct device*,char*,struct usb_interface*,int) ;
 int d_fnstart (int,struct device*,char*,struct usb_interface*) ;
 int i2400m_dev_reset_handle (struct i2400m*,char*) ;
 struct i2400mu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static
int i2400mu_reset_resume(struct usb_interface *iface)
{
 int result;
 struct device *dev = &iface->dev;
 struct i2400mu *i2400mu = usb_get_intfdata(iface);
 struct i2400m *i2400m = &i2400mu->i2400m;

 d_fnstart(3, dev, "(iface %p)\n", iface);
 result = i2400m_dev_reset_handle(i2400m, "device reset on resume");
 d_fnend(3, dev, "(iface %p) = %d\n", iface, result);
 return result < 0 ? result : 0;
}
