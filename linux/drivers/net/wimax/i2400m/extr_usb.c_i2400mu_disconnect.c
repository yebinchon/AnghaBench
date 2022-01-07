
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct i2400mu {int usb_dev; int debugfs_dentry; struct i2400m i2400m; } ;


 int d_fnend (int,struct device*,char*,struct usb_interface*,struct i2400m*) ;
 int d_fnstart (int,struct device*,char*,struct usb_interface*,struct i2400m*) ;
 int debugfs_remove_recursive (int ) ;
 int free_netdev (struct net_device*) ;
 int i2400m_release (struct i2400m*) ;
 struct i2400mu* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static
void i2400mu_disconnect(struct usb_interface *iface)
{
 struct i2400mu *i2400mu = usb_get_intfdata(iface);
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct net_device *net_dev = i2400m->wimax_dev.net_dev;
 struct device *dev = &iface->dev;

 d_fnstart(3, dev, "(iface %p i2400m %p)\n", iface, i2400m);

 debugfs_remove_recursive(i2400mu->debugfs_dentry);
 i2400m_release(i2400m);
 usb_set_intfdata(iface, ((void*)0));
 usb_put_dev(i2400mu->usb_dev);
 free_netdev(net_dev);
 d_fnend(3, dev, "(iface %p i2400m %p) = void\n", iface, i2400m);
}
