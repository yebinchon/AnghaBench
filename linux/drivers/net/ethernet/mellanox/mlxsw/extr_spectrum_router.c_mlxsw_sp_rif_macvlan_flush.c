
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {int dev; } ;


 int __mlxsw_sp_rif_macvlan_flush ;
 int netdev_walk_all_upper_dev_rcu (int ,int ,struct mlxsw_sp_rif*) ;
 int netdev_warn (int ,char*) ;
 int netif_is_macvlan_port (int ) ;

__attribute__((used)) static int mlxsw_sp_rif_macvlan_flush(struct mlxsw_sp_rif *rif)
{
 if (!netif_is_macvlan_port(rif->dev))
  return 0;

 netdev_warn(rif->dev, "Router interface is deleted. Upper macvlans will not work\n");
 return netdev_walk_all_upper_dev_rcu(rif->dev,
          __mlxsw_sp_rif_macvlan_flush, rif);
}
