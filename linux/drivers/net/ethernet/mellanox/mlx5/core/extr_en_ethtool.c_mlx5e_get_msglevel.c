
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int msglevel; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 mlx5e_get_msglevel(struct net_device *dev)
{
 return ((struct mlx5e_priv *)netdev_priv(dev))->msglevel;
}
