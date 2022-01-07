
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int dcbx_cap; TYPE_1__* mdev; } ;
struct TYPE_2__ {int dev; } ;





 int mlx4_max_tc (int ) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 mlx4_en_dcbnl_getcap(struct net_device *dev, int capid, u8 *cap)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 switch (capid) {
 case 129:
  *cap = 1;
  break;
 case 130:
  *cap = priv->dcbx_cap;
  break;
 case 128:
  *cap = 1 << mlx4_max_tc(priv->mdev->dev);
  break;
 default:
  *cap = 0;
  break;
 }

 return 0;
}
