
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct mlx5e_txqsq {int state; TYPE_1__* stats; int sqn; TYPE_2__* channel; int txq; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct TYPE_3__ {int recover; } ;


 int MLX5E_SQ_STATE_RECOVERING ;
 scalar_t__ MLX5_SQC_STATE_ERR ;
 int clear_bit (int ,int *) ;
 int mlx5_core_query_sq_state (struct mlx5_core_dev*,int ,scalar_t__*) ;
 int mlx5e_activate_txqsq (struct mlx5e_txqsq*) ;
 int mlx5e_health_sq_to_ready (TYPE_2__*,int ) ;
 int mlx5e_reset_txqsq_cc_pc (struct mlx5e_txqsq*) ;
 int mlx5e_tx_disable_queue (int ) ;
 int mlx5e_wait_for_sq_flush (struct mlx5e_txqsq*) ;
 int netdev_err (struct net_device*,char*,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int mlx5e_tx_reporter_err_cqe_recover(void *ctx)
{
 struct mlx5_core_dev *mdev;
 struct net_device *dev;
 struct mlx5e_txqsq *sq;
 u8 state;
 int err;

 sq = ctx;
 mdev = sq->channel->mdev;
 dev = sq->channel->netdev;

 if (!test_bit(MLX5E_SQ_STATE_RECOVERING, &sq->state))
  return 0;

 err = mlx5_core_query_sq_state(mdev, sq->sqn, &state);
 if (err) {
  netdev_err(dev, "Failed to query SQ 0x%x state. err = %d\n",
      sq->sqn, err);
  goto out;
 }

 if (state != MLX5_SQC_STATE_ERR)
  goto out;

 mlx5e_tx_disable_queue(sq->txq);

 err = mlx5e_wait_for_sq_flush(sq);
 if (err)
  goto out;






 err = mlx5e_health_sq_to_ready(sq->channel, sq->sqn);
 if (err)
  goto out;

 mlx5e_reset_txqsq_cc_pc(sq);
 sq->stats->recover++;
 clear_bit(MLX5E_SQ_STATE_RECOVERING, &sq->state);
 mlx5e_activate_txqsq(sq);

 return 0;
out:
 clear_bit(MLX5E_SQ_STATE_RECOVERING, &sq->state);
 return err;
}
