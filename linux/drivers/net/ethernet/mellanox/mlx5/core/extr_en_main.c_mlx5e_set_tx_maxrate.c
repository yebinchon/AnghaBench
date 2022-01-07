
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx5e_txqsq {int dummy; } ;
struct mlx5e_priv {int* tx_rates; int state_lock; int state; struct mlx5e_txqsq** txq2sq; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 int MLX5E_STATE_OPENED ;
 int mlx5_rl_is_in_range (struct mlx5_core_dev*,int) ;
 int mlx5_rl_is_supported (struct mlx5_core_dev*) ;
 int mlx5e_set_sq_maxrate (struct net_device*,struct mlx5e_txqsq*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int mlx5e_set_tx_maxrate(struct net_device *dev, int index, u32 rate)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_txqsq *sq = priv->txq2sq[index];
 int err = 0;

 if (!mlx5_rl_is_supported(mdev)) {
  netdev_err(dev, "Rate limiting is not supported on this device\n");
  return -EINVAL;
 }


 rate = rate << 10;


 if (rate && !mlx5_rl_is_in_range(mdev, rate)) {
  netdev_err(dev, "TX rate %u, is not in range\n", rate);
  return -ERANGE;
 }

 mutex_lock(&priv->state_lock);
 if (test_bit(MLX5E_STATE_OPENED, &priv->state))
  err = mlx5e_set_sq_maxrate(dev, sq, rate);
 if (!err)
  priv->tx_rates[index] = rate;
 mutex_unlock(&priv->state_lock);

 return err;
}
