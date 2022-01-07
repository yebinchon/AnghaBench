
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; } ;
struct ethtool_tunable {int id; } ;
struct TYPE_2__ {int inline_thold; } ;


 int EINVAL ;

 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_tunable(struct net_device *dev,
          const struct ethtool_tunable *tuna,
          void *data)
{
 const struct mlx4_en_priv *priv = netdev_priv(dev);
 int ret = 0;

 switch (tuna->id) {
 case 128:
  *(u32 *)data = priv->prof->inline_thold;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
