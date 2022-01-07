
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int mlx5e_netdev_ops_rep ;
 int mlx5e_netdev_ops_uplink_rep ;

bool mlx5e_eswitch_rep(struct net_device *netdev)
{
 if (netdev->netdev_ops == &mlx5e_netdev_ops_rep ||
     netdev->netdev_ops == &mlx5e_netdev_ops_uplink_rep)
  return 1;

 return 0;
}
