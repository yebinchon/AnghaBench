
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wolopts; int supported; } ;
struct tulip_private {TYPE_1__ wolinfo; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 struct tulip_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void tulip_ethtool_get_wol(struct net_device *dev,
      struct ethtool_wolinfo *wolinfo)
{
 struct tulip_private *tp = netdev_priv(dev);

 wolinfo->supported = tp->wolinfo.supported;
 wolinfo->wolopts = tp->wolinfo.wolopts;
 return;
}
