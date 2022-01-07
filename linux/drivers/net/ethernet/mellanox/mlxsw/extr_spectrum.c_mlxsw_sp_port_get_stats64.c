
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtnl_link_stats64 {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int stats; } ;
struct mlxsw_sp_port {TYPE_1__ periodic_hw_stats; } ;


 int memcpy (struct rtnl_link_stats64*,int *,int) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
mlxsw_sp_port_get_stats64(struct net_device *dev,
     struct rtnl_link_stats64 *stats)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);

 memcpy(stats, &mlxsw_sp_port->periodic_hw_stats.stats, sizeof(*stats));
}
