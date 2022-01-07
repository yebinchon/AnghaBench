
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct mlx4_en_priv {TYPE_3__ port_state; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct TYPE_4__ {int flags2; } ;
struct TYPE_5__ {TYPE_1__ caps; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP ;
 int MLX4_EN_PORT_ANE ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 mlx4_en_autoneg_get(struct net_device *dev)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);
 struct mlx4_en_dev *mdev = priv->mdev;
 u32 autoneg = AUTONEG_DISABLE;

 if ((mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_ETH_BACKPL_AN_REP) &&
     (priv->port_state.flags & MLX4_EN_PORT_ANE))
  autoneg = AUTONEG_ENABLE;

 return autoneg;
}
