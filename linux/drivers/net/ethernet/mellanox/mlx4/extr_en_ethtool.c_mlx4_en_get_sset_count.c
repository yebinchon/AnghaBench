
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {int bitmap; } ;
struct mlx4_en_priv {int* tx_ring_num; int rx_ring_num; TYPE_3__* mdev; TYPE_4__ stats_bitmap; } ;
struct bitmap_iterator {int dummy; } ;
struct TYPE_7__ {TYPE_2__* dev; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ caps; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;



 int MLX4_DEV_CAP_FLAG_UC_LOOPBACK ;
 int MLX4_EN_NUM_SELF_TEST ;
 int NUM_ALL_STATS ;
 int NUM_XDP_STATS ;
 size_t TX ;
 int bitmap_iterator_count (struct bitmap_iterator*) ;
 int bitmap_iterator_init (struct bitmap_iterator*,int ,int ) ;
 int mlx4_en_priv_flags ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_sset_count(struct net_device *dev, int sset)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct bitmap_iterator it;

 bitmap_iterator_init(&it, priv->stats_bitmap.bitmap, NUM_ALL_STATS);

 switch (sset) {
 case 129:
  return bitmap_iterator_count(&it) +
   (priv->tx_ring_num[TX] * 2) +
   (priv->rx_ring_num * (3 + NUM_XDP_STATS));
 case 128:
  return MLX4_EN_NUM_SELF_TEST - !(priv->mdev->dev->caps.flags
     & MLX4_DEV_CAP_FLAG_UC_LOOPBACK) * 2;
 case 130:
  return ARRAY_SIZE(mlx4_en_priv_flags);
 default:
  return -EOPNOTSUPP;
 }
}
