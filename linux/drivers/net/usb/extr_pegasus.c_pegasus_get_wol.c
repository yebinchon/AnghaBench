
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;
struct TYPE_3__ {int wolopts; } ;
typedef TYPE_1__ pegasus_t ;


 int WAKE_MAGIC ;
 int WAKE_PHY ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
pegasus_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 pegasus_t *pegasus = netdev_priv(dev);

 wol->supported = WAKE_MAGIC | WAKE_PHY;
 wol->wolopts = pegasus->wolopts;
}
