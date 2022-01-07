
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
typedef int netdev_features_t ;
struct TYPE_3__ {int flags2; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int MLX4_DEV_CAP_FLAG2_SKIP_OUTER_VLAN ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_STAG_RX ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t mlx4_en_fix_features(struct net_device *netdev,
           netdev_features_t features)
{
 struct mlx4_en_priv *en_priv = netdev_priv(netdev);
 struct mlx4_en_dev *mdev = en_priv->mdev;





 if (features & NETIF_F_HW_VLAN_CTAG_RX &&
     !(mdev->dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_SKIP_OUTER_VLAN))
  features |= NETIF_F_HW_VLAN_STAG_RX;
 else
  features &= ~NETIF_F_HW_VLAN_STAG_RX;

 return features;
}
