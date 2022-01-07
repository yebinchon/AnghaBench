
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int saved_wolopts; int intf; int control; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int WAKE_ANY ;
 int __rtl_set_wol (struct r8152*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int rtl_can_wakeup (struct r8152*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int rtl8152_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct r8152 *tp = netdev_priv(dev);
 int ret;

 if (!rtl_can_wakeup(tp))
  return -EOPNOTSUPP;

 if (wol->wolopts & ~WAKE_ANY)
  return -EINVAL;

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  goto out_set_wol;

 mutex_lock(&tp->control);

 __rtl_set_wol(tp, wol->wolopts);
 tp->saved_wolopts = wol->wolopts & WAKE_ANY;

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);

out_set_wol:
 return ret;
}
