
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

 int MAX_INLINE ;
 int MIN_PKT_LEN ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_tunable(struct net_device *dev,
          const struct ethtool_tunable *tuna,
          const void *data)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 int val, ret = 0;

 switch (tuna->id) {
 case 128:
  val = *(u32 *)data;
  if (val < MIN_PKT_LEN || val > MAX_INLINE)
   ret = -EINVAL;
  else
   priv->prof->inline_thold = val;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
