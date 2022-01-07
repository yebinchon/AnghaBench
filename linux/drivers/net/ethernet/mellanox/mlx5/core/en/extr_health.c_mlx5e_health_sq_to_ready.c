
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mlx5e_modify_sq_param {void* next_state; void* curr_state; } ;
struct mlx5e_channel {struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int msp ;


 void* MLX5_SQC_STATE_ERR ;
 void* MLX5_SQC_STATE_RDY ;
 void* MLX5_SQC_STATE_RST ;
 int memset (struct mlx5e_modify_sq_param*,int ,int) ;
 int mlx5e_modify_sq (struct mlx5_core_dev*,int ,struct mlx5e_modify_sq_param*) ;
 int netdev_err (struct net_device*,char*,int ) ;

int mlx5e_health_sq_to_ready(struct mlx5e_channel *channel, u32 sqn)
{
 struct mlx5_core_dev *mdev = channel->mdev;
 struct net_device *dev = channel->netdev;
 struct mlx5e_modify_sq_param msp = {};
 int err;

 msp.curr_state = MLX5_SQC_STATE_ERR;
 msp.next_state = MLX5_SQC_STATE_RST;

 err = mlx5e_modify_sq(mdev, sqn, &msp);
 if (err) {
  netdev_err(dev, "Failed to move sq 0x%x to reset\n", sqn);
  return err;
 }

 memset(&msp, 0, sizeof(msp));
 msp.curr_state = MLX5_SQC_STATE_RST;
 msp.next_state = MLX5_SQC_STATE_RDY;

 err = mlx5e_modify_sq(mdev, sqn, &msp);
 if (err) {
  netdev_err(dev, "Failed to move sq 0x%x to ready\n", sqn);
  return err;
 }

 return 0;
}
