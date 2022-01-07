
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_rq {int rqn; struct net_device* netdev; } ;


 int MLX5_RQC_STATE_RDY ;
 int MLX5_RQC_STATE_RST ;
 int mlx5e_modify_rq_state (struct mlx5e_rq*,int,int) ;
 int netdev_err (struct net_device*,char*,int ) ;

__attribute__((used)) static int mlx5e_rq_to_ready(struct mlx5e_rq *rq, int curr_state)
{
 struct net_device *dev = rq->netdev;
 int err;

 err = mlx5e_modify_rq_state(rq, curr_state, MLX5_RQC_STATE_RST);
 if (err) {
  netdev_err(dev, "Failed to move rq 0x%x to reset\n", rq->rqn);
  return err;
 }
 err = mlx5e_modify_rq_state(rq, MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY);
 if (err) {
  netdev_err(dev, "Failed to move rq 0x%x to ready\n", rq->rqn);
  return err;
 }

 return 0;
}
