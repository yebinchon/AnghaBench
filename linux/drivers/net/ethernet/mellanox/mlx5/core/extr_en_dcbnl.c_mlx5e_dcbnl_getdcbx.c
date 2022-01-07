
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int cap; } ;
struct mlx5e_priv {TYPE_1__ dcbx; } ;


 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 mlx5e_dcbnl_getdcbx(struct net_device *dev)
{
 struct mlx5e_priv *priv = netdev_priv(dev);

 return priv->dcbx.cap;
}
