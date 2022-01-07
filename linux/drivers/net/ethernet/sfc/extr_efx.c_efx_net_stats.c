
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct efx_nic {int stats_lock; TYPE_1__* type; } ;
struct TYPE_2__ {int (* update_stats ) (struct efx_nic*,int *,struct rtnl_link_stats64*) ;} ;


 struct efx_nic* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct efx_nic*,int *,struct rtnl_link_stats64*) ;

__attribute__((used)) static void efx_net_stats(struct net_device *net_dev,
     struct rtnl_link_stats64 *stats)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 spin_lock_bh(&efx->stats_lock);
 efx->type->update_stats(efx, ((void*)0), stats);
 spin_unlock_bh(&efx->stats_lock);
}
