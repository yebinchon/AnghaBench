
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* set_wol ) (struct ef4_nic*,int ) ;} ;


 struct ef4_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct ef4_nic*,int ) ;

__attribute__((used)) static int ef4_ethtool_set_wol(struct net_device *net_dev,
          struct ethtool_wolinfo *wol)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 return efx->type->set_wol(efx, wol->wolopts);
}
