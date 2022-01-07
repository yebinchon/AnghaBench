
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int intf; int control; int mii; } ;
struct net_device {int dummy; } ;


 int mii_nway_restart (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int rtl8152_nway_reset(struct net_device *dev)
{
 struct r8152 *tp = netdev_priv(dev);
 int ret;

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  goto out;

 mutex_lock(&tp->control);

 ret = mii_nway_restart(&tp->mii);

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);

out:
 return ret;
}
