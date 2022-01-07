
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int pflags; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; } ;


 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 mlx5e_get_priv_flags(struct net_device *netdev)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);

 return priv->channels.params.pflags;
}
