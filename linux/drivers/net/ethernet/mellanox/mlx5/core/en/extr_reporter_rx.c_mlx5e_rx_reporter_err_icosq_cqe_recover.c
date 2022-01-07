
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct mlx5e_rq {TYPE_1__* stats; } ;
struct mlx5e_icosq {int state; int sqn; TYPE_2__* channel; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {struct net_device* netdev; struct mlx5_core_dev* mdev; struct mlx5e_rq rq; } ;
struct TYPE_3__ {int recover; } ;


 int MLX5E_SQ_STATE_RECOVERING ;
 scalar_t__ MLX5_SQC_STATE_ERR ;
 int clear_bit (int ,int *) ;
 int mlx5_core_query_sq_state (struct mlx5_core_dev*,int ,scalar_t__*) ;
 int mlx5e_activate_icosq (struct mlx5e_icosq*) ;
 int mlx5e_activate_rq (struct mlx5e_rq*) ;
 int mlx5e_deactivate_icosq (struct mlx5e_icosq*) ;
 int mlx5e_deactivate_rq (struct mlx5e_rq*) ;
 int mlx5e_free_rx_descs (struct mlx5e_rq*) ;
 int mlx5e_health_sq_to_ready (TYPE_2__*,int ) ;
 int mlx5e_reset_icosq_cc_pc (struct mlx5e_icosq*) ;
 int mlx5e_wait_for_icosq_flush (struct mlx5e_icosq*) ;
 int netdev_err (struct net_device*,char*,int ,int) ;

__attribute__((used)) static int mlx5e_rx_reporter_err_icosq_cqe_recover(void *ctx)
{
 struct mlx5_core_dev *mdev;
 struct mlx5e_icosq *icosq;
 struct net_device *dev;
 struct mlx5e_rq *rq;
 u8 state;
 int err;

 icosq = ctx;
 rq = &icosq->channel->rq;
 mdev = icosq->channel->mdev;
 dev = icosq->channel->netdev;
 err = mlx5_core_query_sq_state(mdev, icosq->sqn, &state);
 if (err) {
  netdev_err(dev, "Failed to query ICOSQ 0x%x state. err = %d\n",
      icosq->sqn, err);
  goto out;
 }

 if (state != MLX5_SQC_STATE_ERR)
  goto out;

 mlx5e_deactivate_rq(rq);
 err = mlx5e_wait_for_icosq_flush(icosq);
 if (err)
  goto out;

 mlx5e_deactivate_icosq(icosq);



 err = mlx5e_health_sq_to_ready(icosq->channel, icosq->sqn);
 if (err)
  goto out;

 mlx5e_reset_icosq_cc_pc(icosq);
 mlx5e_free_rx_descs(rq);
 clear_bit(MLX5E_SQ_STATE_RECOVERING, &icosq->state);
 mlx5e_activate_icosq(icosq);
 mlx5e_activate_rq(rq);

 rq->stats->recover++;
 return 0;
out:
 clear_bit(MLX5E_SQ_STATE_RECOVERING, &icosq->state);
 return err;
}
