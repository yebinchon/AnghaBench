
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* eee_set ) (struct r8152*,struct ethtool_eee*) ;} ;
struct r8152 {int intf; int control; int mii; TYPE_1__ rtl_ops; } ;
struct net_device {int dummy; } ;
struct ethtool_eee {int dummy; } ;


 int mii_nway_restart (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int stub1 (struct r8152*,struct ethtool_eee*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int
rtl_ethtool_set_eee(struct net_device *net, struct ethtool_eee *edata)
{
 struct r8152 *tp = netdev_priv(net);
 int ret;

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  goto out;

 mutex_lock(&tp->control);

 ret = tp->rtl_ops.eee_set(tp, edata);
 if (!ret)
  ret = mii_nway_restart(&tp->mii);

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);

out:
 return ret;
}
