
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int supported; int wolopts; } ;
struct tulip_private {TYPE_2__ wolinfo; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_3__ {int dev; } ;


 int EOPNOTSUPP ;
 int device_set_wakeup_enable (int *,int) ;
 struct tulip_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int tulip_ethtool_set_wol(struct net_device *dev,
     struct ethtool_wolinfo *wolinfo)
{
 struct tulip_private *tp = netdev_priv(dev);

 if (wolinfo->wolopts & (~tp->wolinfo.supported))
     return -EOPNOTSUPP;

 tp->wolinfo.wolopts = wolinfo->wolopts;
 device_set_wakeup_enable(&tp->pdev->dev, tp->wolinfo.wolopts);
 return 0;
}
