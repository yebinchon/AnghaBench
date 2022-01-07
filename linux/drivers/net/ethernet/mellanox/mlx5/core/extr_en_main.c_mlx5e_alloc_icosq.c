
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int db_numa_node; } ;
struct mlx5e_sq_param {TYPE_3__ wq; int sqc; } ;
struct mlx5_wq_cyc {int * db; } ;
struct mlx5e_icosq {int wq_ctrl; int recover_work; int uar_map; struct mlx5e_channel* channel; struct mlx5_wq_cyc wq; } ;
struct mlx5e_channel {int cpu; struct mlx5_core_dev* mdev; } ;
struct TYPE_4__ {int map; } ;
struct TYPE_5__ {TYPE_1__ bfreg; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;


 int INIT_WORK (int *,int ) ;
 void* MLX5_ADDR_OF (int ,int ,int ) ;
 size_t MLX5_SND_DBR ;
 int cpu_to_node (int ) ;
 int mlx5_wq_cyc_create (struct mlx5_core_dev*,TYPE_3__*,void*,struct mlx5_wq_cyc*,int *) ;
 int mlx5_wq_destroy (int *) ;
 int mlx5e_alloc_icosq_db (struct mlx5e_icosq*,int ) ;
 int mlx5e_icosq_err_cqe_work ;
 int sqc ;
 struct mlx5_wq_cyc* wq ;

__attribute__((used)) static int mlx5e_alloc_icosq(struct mlx5e_channel *c,
        struct mlx5e_sq_param *param,
        struct mlx5e_icosq *sq)
{
 void *sqc_wq = MLX5_ADDR_OF(sqc, param->sqc, wq);
 struct mlx5_core_dev *mdev = c->mdev;
 struct mlx5_wq_cyc *wq = &sq->wq;
 int err;

 sq->channel = c;
 sq->uar_map = mdev->mlx5e_res.bfreg.map;

 param->wq.db_numa_node = cpu_to_node(c->cpu);
 err = mlx5_wq_cyc_create(mdev, &param->wq, sqc_wq, wq, &sq->wq_ctrl);
 if (err)
  return err;
 wq->db = &wq->db[MLX5_SND_DBR];

 err = mlx5e_alloc_icosq_db(sq, cpu_to_node(c->cpu));
 if (err)
  goto err_sq_wq_destroy;

 INIT_WORK(&sq->recover_work, mlx5e_icosq_err_cqe_work);

 return 0;

err_sq_wq_destroy:
 mlx5_wq_destroy(&sq->wq_ctrl);

 return err;
}
