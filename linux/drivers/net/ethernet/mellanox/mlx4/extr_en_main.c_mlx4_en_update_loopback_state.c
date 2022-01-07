
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {int * qps; TYPE_2__* indir_qp; } ;
struct mlx4_en_priv {int flags; int rx_ring_num; TYPE_4__* mdev; TYPE_3__ rss_map; scalar_t__ validate_loopback; int ctrl_flags; } ;
typedef int netdev_features_t ;
struct TYPE_6__ {int flags2; } ;
struct TYPE_10__ {TYPE_1__ caps; } ;
struct TYPE_9__ {int state_lock; TYPE_5__* dev; } ;
struct TYPE_7__ {scalar_t__ qpn; } ;


 int MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB ;
 int MLX4_EN_FLAG_ENABLE_HW_LOOPBACK ;
 int MLX4_EN_FLAG_RX_FILTER_NEEDED ;
 int MLX4_WQE_CTRL_FORCE_LOOPBACK ;
 int NETIF_F_LOOPBACK ;
 int cpu_to_be32 (int ) ;
 int mlx4_en_change_mcast_lb (struct mlx4_en_priv*,int *,int) ;
 scalar_t__ mlx4_is_mfunc (TYPE_5__*) ;
 int mlx4_warn (TYPE_4__*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

void mlx4_en_update_loopback_state(struct net_device *dev,
       netdev_features_t features)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 if (features & NETIF_F_LOOPBACK)
  priv->ctrl_flags |= cpu_to_be32(MLX4_WQE_CTRL_FORCE_LOOPBACK);
 else
  priv->ctrl_flags &= cpu_to_be32(~MLX4_WQE_CTRL_FORCE_LOOPBACK);

 priv->flags &= ~(MLX4_EN_FLAG_RX_FILTER_NEEDED|
   MLX4_EN_FLAG_ENABLE_HW_LOOPBACK);




 if (mlx4_is_mfunc(priv->mdev->dev) &&
     !(features & NETIF_F_LOOPBACK) && !priv->validate_loopback)
  priv->flags |= MLX4_EN_FLAG_RX_FILTER_NEEDED;




 if (mlx4_is_mfunc(priv->mdev->dev) || priv->validate_loopback)
  priv->flags |= MLX4_EN_FLAG_ENABLE_HW_LOOPBACK;

 mutex_lock(&priv->mdev->state_lock);
 if ((priv->mdev->dev->caps.flags2 &
      MLX4_DEV_CAP_FLAG2_UPDATE_QP_SRC_CHECK_LB) &&
     priv->rss_map.indir_qp && priv->rss_map.indir_qp->qpn) {
  int i;
  int err = 0;
  int loopback = !!(features & NETIF_F_LOOPBACK);

  for (i = 0; i < priv->rx_ring_num; i++) {
   int ret;

   ret = mlx4_en_change_mcast_lb(priv,
            &priv->rss_map.qps[i],
            loopback);
   if (!err)
    err = ret;
  }
  if (err)
   mlx4_warn(priv->mdev, "failed to change mcast loopback\n");
 }
 mutex_unlock(&priv->mdev->state_lock);
}
