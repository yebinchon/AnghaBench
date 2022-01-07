
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int cap; } ;
struct mlx5e_priv {TYPE_1__ dcbx; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
 int DCB_CAP_DCBX_VER_CEE ;
 int DCB_CAP_DCBX_VER_IEEE ;
 int mlx5_max_tc (struct mlx5_core_dev*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 mlx5e_dcbnl_getcap(struct net_device *netdev,
        int capid, u8 *cap)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5_core_dev *mdev = priv->mdev;
 u8 rval = 0;

 switch (capid) {
 case 130:
  *cap = 1;
  break;
 case 132:
  *cap = 1;
  break;
 case 128:
  *cap = 0;
  break;
 case 129:
  *cap = 1 << mlx5_max_tc(mdev);
  break;
 case 131:
  *cap = 1 << mlx5_max_tc(mdev);
  break;
 case 133:
  *cap = 0;
  break;
 case 135:
  *cap = 0;
  break;
 case 134:
  *cap = priv->dcbx.cap |
         DCB_CAP_DCBX_VER_CEE |
         DCB_CAP_DCBX_VER_IEEE;
  break;
 default:
  *cap = 0;
  rval = 1;
  break;
 }

 return rval;
}
