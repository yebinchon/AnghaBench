
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int flags; TYPE_1__* mdev; } ;
struct TYPE_2__ {int dev; } ;


 int DCB_NUMTCS_ATTR_PFC ;
 int EINVAL ;
 int MLX4_EN_FLAG_DCB_ENABLED ;
 int mlx4_max_tc (int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_dcbnl_getnumtcs(struct net_device *netdev, int tcid, u8 *num)
{
 struct mlx4_en_priv *priv = netdev_priv(netdev);

 if (!(priv->flags & MLX4_EN_FLAG_DCB_ENABLED))
  return -EINVAL;

 if (tcid == DCB_NUMTCS_ATTR_PFC)
  *num = mlx4_max_tc(priv->mdev->dev);
 else
  *num = 0;

 return 0;
}
