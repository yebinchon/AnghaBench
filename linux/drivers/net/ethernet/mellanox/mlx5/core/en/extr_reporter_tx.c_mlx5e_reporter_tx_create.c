
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {struct devlink_health_reporter* tx_reporter; int netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;


 scalar_t__ IS_ERR (struct devlink_health_reporter*) ;
 int MLX5_REPORTER_TX_GRACEFUL_PERIOD ;
 int PTR_ERR (struct devlink_health_reporter*) ;
 struct devlink_health_reporter* devlink_health_reporter_create (struct devlink*,int *,int ,int,struct mlx5e_priv*) ;
 int mlx5_tx_reporter_ops ;
 int netdev_warn (int ,char*,int) ;
 struct devlink* priv_to_devlink (struct mlx5_core_dev*) ;

int mlx5e_reporter_tx_create(struct mlx5e_priv *priv)
{
 struct devlink_health_reporter *reporter;
 struct mlx5_core_dev *mdev = priv->mdev;
 struct devlink *devlink;

 devlink = priv_to_devlink(mdev);
 reporter =
  devlink_health_reporter_create(devlink, &mlx5_tx_reporter_ops,
            MLX5_REPORTER_TX_GRACEFUL_PERIOD,
            1, priv);
 if (IS_ERR(reporter)) {
  netdev_warn(priv->netdev,
       "Failed to create tx reporter, err = %ld\n",
       PTR_ERR(reporter));
  return PTR_ERR(reporter);
 }
 priv->tx_reporter = reporter;
 return 0;
}
