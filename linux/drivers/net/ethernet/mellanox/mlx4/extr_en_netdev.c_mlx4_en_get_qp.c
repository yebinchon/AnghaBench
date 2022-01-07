
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct mlx4_en_priv {int base_qpn; int port; TYPE_1__* dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {struct mlx4_dev* dev; } ;
struct TYPE_4__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_2__ caps; } ;
struct TYPE_3__ {int dev_addr; } ;


 int DRV ;
 int MLX4_RESERVE_A0_QP ;
 int MLX4_RES_USAGE_DRIVER ;
 scalar_t__ MLX4_STEERING_MODE_A0 ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int) ;
 int en_err (struct mlx4_en_priv*,char*,...) ;
 int en_info (struct mlx4_en_priv*,char*,scalar_t__) ;
 int mlx4_get_base_qpn (struct mlx4_dev*,int ) ;
 int mlx4_mac_to_u64 (int) ;
 int mlx4_qp_reserve_range (struct mlx4_dev*,int,int,int*,int ,int ) ;
 int mlx4_register_mac (struct mlx4_dev*,int ,int ) ;
 int mlx4_unregister_mac (struct mlx4_dev*,int ,int ) ;

__attribute__((used)) static int mlx4_en_get_qp(struct mlx4_en_priv *priv)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_dev *dev = mdev->dev;
 int index = 0;
 int err = 0;
 int *qpn = &priv->base_qpn;
 u64 mac = mlx4_mac_to_u64(priv->dev->dev_addr);

 en_dbg(DRV, priv, "Registering MAC: %pM for adding\n",
        priv->dev->dev_addr);
 index = mlx4_register_mac(dev, priv->port, mac);
 if (index < 0) {
  err = index;
  en_err(priv, "Failed adding MAC: %pM\n",
         priv->dev->dev_addr);
  return err;
 }

 en_info(priv, "Steering Mode %d\n", dev->caps.steering_mode);

 if (dev->caps.steering_mode == MLX4_STEERING_MODE_A0) {
  int base_qpn = mlx4_get_base_qpn(dev, priv->port);
  *qpn = base_qpn + index;
  return 0;
 }

 err = mlx4_qp_reserve_range(dev, 1, 1, qpn, MLX4_RESERVE_A0_QP,
        MLX4_RES_USAGE_DRIVER);
 en_dbg(DRV, priv, "Reserved qp %d\n", *qpn);
 if (err) {
  en_err(priv, "Failed to reserve qp for mac registration\n");
  mlx4_unregister_mac(dev, priv->port, mac);
  return err;
 }

 return 0;
}
