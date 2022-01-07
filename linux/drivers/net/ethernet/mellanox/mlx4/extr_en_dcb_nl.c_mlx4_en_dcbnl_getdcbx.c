
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int dcbx_cap; } ;


 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 mlx4_en_dcbnl_getdcbx(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 return priv->dcbx_cap;
}
