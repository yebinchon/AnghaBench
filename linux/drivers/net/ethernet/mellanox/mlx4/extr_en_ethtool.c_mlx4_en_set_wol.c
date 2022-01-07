
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int port; TYPE_2__* mdev; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MLX4_DEV_CAP_FLAG_WOL_PORT1 ;
 int MLX4_DEV_CAP_FLAG_WOL_PORT2 ;
 int MLX4_EN_WOL_DO_MODIFY ;
 int MLX4_EN_WOL_ENABLED ;
 int MLX4_EN_WOL_MAGIC ;
 int WAKE_MAGIC ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int mlx4_wol_read (TYPE_3__*,int*,int) ;
 int mlx4_wol_write (TYPE_3__*,int,int) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_set_wol(struct net_device *netdev,
       struct ethtool_wolinfo *wol)
{
 struct mlx4_en_priv *priv = netdev_priv(netdev);
 u64 config = 0;
 int err = 0;
 u64 mask;

 if ((priv->port < 1) || (priv->port > 2))
  return -EOPNOTSUPP;

 mask = (priv->port == 1) ? MLX4_DEV_CAP_FLAG_WOL_PORT1 :
  MLX4_DEV_CAP_FLAG_WOL_PORT2;

 if (!(priv->mdev->dev->caps.flags & mask))
  return -EOPNOTSUPP;

 if (wol->supported & ~WAKE_MAGIC)
  return -EINVAL;

 err = mlx4_wol_read(priv->mdev->dev, &config, priv->port);
 if (err) {
  en_err(priv, "Failed to get WoL info, unable to modify\n");
  return err;
 }

 if (wol->wolopts & WAKE_MAGIC) {
  config |= MLX4_EN_WOL_DO_MODIFY | MLX4_EN_WOL_ENABLED |
    MLX4_EN_WOL_MAGIC;
 } else {
  config &= ~(MLX4_EN_WOL_ENABLED | MLX4_EN_WOL_MAGIC);
  config |= MLX4_EN_WOL_DO_MODIFY;
 }

 err = mlx4_wol_write(priv->mdev->dev, config, priv->port);
 if (err)
  en_err(priv, "Failed to set WoL information\n");

 return err;
}
