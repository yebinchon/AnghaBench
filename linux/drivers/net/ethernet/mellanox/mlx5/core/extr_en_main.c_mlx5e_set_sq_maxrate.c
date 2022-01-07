
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct mlx5e_txqsq {scalar_t__ rate_limit; int sqn; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_modify_sq_param {int rl_update; int rl_index; void* next_state; void* curr_state; int member_0; } ;
struct mlx5_rate_limit {scalar_t__ rate; int member_0; } ;
struct mlx5_core_dev {int dummy; } ;


 void* MLX5_SQC_STATE_RDY ;
 int mlx5_rl_add_rate (struct mlx5_core_dev*,int *,struct mlx5_rate_limit*) ;
 int mlx5_rl_remove_rate (struct mlx5_core_dev*,struct mlx5_rate_limit*) ;
 int mlx5e_modify_sq (struct mlx5_core_dev*,int ,struct mlx5e_modify_sq_param*) ;
 int netdev_err (struct net_device*,char*,scalar_t__,int) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_set_sq_maxrate(struct net_device *dev,
    struct mlx5e_txqsq *sq, u32 rate)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5e_modify_sq_param msp = {0};
 struct mlx5_rate_limit rl = {0};
 u16 rl_index = 0;
 int err;

 if (rate == sq->rate_limit)

  return 0;

 if (sq->rate_limit) {
  rl.rate = sq->rate_limit;

  mlx5_rl_remove_rate(mdev, &rl);
 }

 sq->rate_limit = 0;

 if (rate) {
  rl.rate = rate;
  err = mlx5_rl_add_rate(mdev, &rl_index, &rl);
  if (err) {
   netdev_err(dev, "Failed configuring rate %u: %d\n",
       rate, err);
   return err;
  }
 }

 msp.curr_state = MLX5_SQC_STATE_RDY;
 msp.next_state = MLX5_SQC_STATE_RDY;
 msp.rl_index = rl_index;
 msp.rl_update = 1;
 err = mlx5e_modify_sq(mdev, sq->sqn, &msp);
 if (err) {
  netdev_err(dev, "Failed configuring rate %u: %d\n",
      rate, err);

  if (rate)
   mlx5_rl_remove_rate(mdev, &rl);
  return err;
 }

 sq->rate_limit = rate;
 return 0;
}
