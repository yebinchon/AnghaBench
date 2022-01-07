
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int msglevel; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_set_msglevel(struct net_device *dev, u32 val)
{
 ((struct mlx5e_priv *)netdev_priv(dev))->msglevel = val;
}
