
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_umem {int dummy; } ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_rq_param {int dummy; } ;
struct mlx5e_rq {int dummy; } ;
struct mlx5e_params {scalar_t__ rx_dim_enabled; } ;
struct TYPE_2__ {int state; } ;
struct mlx5e_channel {TYPE_1__ rq; scalar_t__ xdp; int mdev; } ;


 scalar_t__ MLX5E_GET_PFLAG (struct mlx5e_params*,int ) ;
 int MLX5E_PFLAG_RX_NO_CSUM_COMPLETE ;
 int MLX5E_RQ_STATE_AM ;
 int MLX5E_RQ_STATE_CSUM_FULL ;
 int MLX5E_RQ_STATE_NO_CSUM_COMPLETE ;
 scalar_t__ MLX5_CAP_ETH (int ,int ) ;
 int MLX5_RQC_STATE_RDY ;
 int MLX5_RQC_STATE_RST ;
 int __set_bit (int ,int *) ;
 int cqe_checksum_full ;
 int mlx5e_alloc_rq (struct mlx5e_channel*,struct mlx5e_params*,struct mlx5e_xsk_param*,struct xdp_umem*,struct mlx5e_rq_param*,struct mlx5e_rq*) ;
 int mlx5e_create_rq (struct mlx5e_rq*,struct mlx5e_rq_param*) ;
 int mlx5e_destroy_rq (struct mlx5e_rq*) ;
 int mlx5e_free_rq (struct mlx5e_rq*) ;
 int mlx5e_modify_rq_state (struct mlx5e_rq*,int ,int ) ;

int mlx5e_open_rq(struct mlx5e_channel *c, struct mlx5e_params *params,
    struct mlx5e_rq_param *param, struct mlx5e_xsk_param *xsk,
    struct xdp_umem *umem, struct mlx5e_rq *rq)
{
 int err;

 err = mlx5e_alloc_rq(c, params, xsk, umem, param, rq);
 if (err)
  return err;

 err = mlx5e_create_rq(rq, param);
 if (err)
  goto err_free_rq;

 err = mlx5e_modify_rq_state(rq, MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY);
 if (err)
  goto err_destroy_rq;

 if (MLX5_CAP_ETH(c->mdev, cqe_checksum_full))
  __set_bit(MLX5E_RQ_STATE_CSUM_FULL, &c->rq.state);

 if (params->rx_dim_enabled)
  __set_bit(MLX5E_RQ_STATE_AM, &c->rq.state);





 if (MLX5E_GET_PFLAG(params, MLX5E_PFLAG_RX_NO_CSUM_COMPLETE) || c->xdp)
  __set_bit(MLX5E_RQ_STATE_NO_CSUM_COMPLETE, &c->rq.state);

 return 0;

err_destroy_rq:
 mlx5e_destroy_rq(rq);
err_free_rq:
 mlx5e_free_rq(rq);

 return err;
}
