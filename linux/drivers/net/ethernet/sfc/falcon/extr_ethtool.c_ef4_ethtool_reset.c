
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* map_reset_flags ) (int *) ;} ;


 int ef4_reset (struct ef4_nic*,int) ;
 struct ef4_nic* netdev_priv (struct net_device*) ;
 int stub1 (int *) ;

__attribute__((used)) static int ef4_ethtool_reset(struct net_device *net_dev, u32 *flags)
{
 struct ef4_nic *efx = netdev_priv(net_dev);
 int rc;

 rc = efx->type->map_reset_flags(flags);
 if (rc < 0)
  return rc;

 return ef4_reset(efx, rc);
}
