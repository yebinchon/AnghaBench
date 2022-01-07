
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct mlx4_en_priv {int base_qpn; int flags; int port; TYPE_2__* dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {struct mlx4_dev* dev; } ;
struct TYPE_3__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {int dev_addr; } ;


 int DRV ;
 int MLX4_EN_FLAG_FORCE_PROMISC ;
 scalar_t__ MLX4_STEERING_MODE_A0 ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ,...) ;
 int mlx4_mac_to_u64 (int ) ;
 int mlx4_qp_release_range (struct mlx4_dev*,int,int) ;
 int mlx4_unregister_mac (struct mlx4_dev*,int ,int ) ;

__attribute__((used)) static void mlx4_en_put_qp(struct mlx4_en_priv *priv)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_dev *dev = mdev->dev;
 int qpn = priv->base_qpn;

 if (dev->caps.steering_mode == MLX4_STEERING_MODE_A0) {
  u64 mac = mlx4_mac_to_u64(priv->dev->dev_addr);
  en_dbg(DRV, priv, "Registering MAC: %pM for deleting\n",
         priv->dev->dev_addr);
  mlx4_unregister_mac(dev, priv->port, mac);
 } else {
  en_dbg(DRV, priv, "Releasing qp: port %d, qpn %d\n",
         priv->port, qpn);
  mlx4_qp_release_range(dev, qpn, 1);
  priv->flags &= ~MLX4_EN_FLAG_FORCE_PROMISC;
 }
}
