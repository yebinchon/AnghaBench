
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xdp_umem {int dummy; } ;
struct mlx5_wq_cyc {int * db; } ;
struct mlx5e_xdpsq {int wq_ctrl; struct xdp_umem* umem; int * stats; int hw_mtu; int min_inline_mode; int uar_map; struct mlx5e_channel* channel; int mkey_be; int pdev; struct mlx5_wq_cyc wq; } ;
struct TYPE_10__ {int db_numa_node; } ;
struct mlx5e_sq_param {TYPE_5__ wq; int sqc; } ;
struct mlx5e_params {int sw_mtu; int tx_min_inline_mode; } ;
struct mlx5e_channel {size_t ix; int cpu; TYPE_4__* priv; int mkey_be; int pdev; struct mlx5_core_dev* mdev; } ;
struct TYPE_6__ {int map; } ;
struct TYPE_7__ {TYPE_1__ bfreg; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;
struct TYPE_9__ {TYPE_3__* channel_stats; } ;
struct TYPE_8__ {int rq_xdpsq; int xdpsq; int xsksq; } ;


 int MLX5E_SW2HW_MTU (struct mlx5e_params*,int ) ;
 void* MLX5_ADDR_OF (int ,int ,int ) ;
 size_t MLX5_SND_DBR ;
 int cpu_to_node (int ) ;
 int mlx5_wq_cyc_create (struct mlx5_core_dev*,TYPE_5__*,void*,struct mlx5_wq_cyc*,int *) ;
 int mlx5_wq_destroy (int *) ;
 int mlx5e_alloc_xdpsq_db (struct mlx5e_xdpsq*,int ) ;
 int sqc ;
 struct mlx5_wq_cyc* wq ;

__attribute__((used)) static int mlx5e_alloc_xdpsq(struct mlx5e_channel *c,
        struct mlx5e_params *params,
        struct xdp_umem *umem,
        struct mlx5e_sq_param *param,
        struct mlx5e_xdpsq *sq,
        bool is_redirect)
{
 void *sqc_wq = MLX5_ADDR_OF(sqc, param->sqc, wq);
 struct mlx5_core_dev *mdev = c->mdev;
 struct mlx5_wq_cyc *wq = &sq->wq;
 int err;

 sq->pdev = c->pdev;
 sq->mkey_be = c->mkey_be;
 sq->channel = c;
 sq->uar_map = mdev->mlx5e_res.bfreg.map;
 sq->min_inline_mode = params->tx_min_inline_mode;
 sq->hw_mtu = MLX5E_SW2HW_MTU(params, params->sw_mtu);
 sq->umem = umem;

 sq->stats = sq->umem ?
  &c->priv->channel_stats[c->ix].xsksq :
  is_redirect ?
   &c->priv->channel_stats[c->ix].xdpsq :
   &c->priv->channel_stats[c->ix].rq_xdpsq;

 param->wq.db_numa_node = cpu_to_node(c->cpu);
 err = mlx5_wq_cyc_create(mdev, &param->wq, sqc_wq, wq, &sq->wq_ctrl);
 if (err)
  return err;
 wq->db = &wq->db[MLX5_SND_DBR];

 err = mlx5e_alloc_xdpsq_db(sq, cpu_to_node(c->cpu));
 if (err)
  goto err_sq_wq_destroy;

 return 0;

err_sq_wq_destroy:
 mlx5_wq_destroy(&sq->wq_ctrl);

 return err;
}
