
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int pflags; } ;


 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 mlx4_en_get_priv_flags(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 return priv->pflags;
}
