
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_wq_param {int buf_numa_node; int db_numa_node; } ;
struct mlx5_frag_buf_ctrl {int dummy; } ;
struct mlx5_wq_cyc {int sz; int db; struct mlx5_frag_buf_ctrl fbc; } ;
struct TYPE_5__ {int db; } ;
struct TYPE_4__ {int frags; } ;
struct mlx5_wq_ctrl {TYPE_2__ db; struct mlx5_core_dev* mdev; TYPE_1__ buf; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_GET (struct mlx5_wq_cyc*,void*,int ) ;
 int log_wq_stride ;
 int log_wq_sz ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_db_alloc_node (struct mlx5_core_dev*,TYPE_2__*,int ) ;
 int mlx5_db_free (struct mlx5_core_dev*,TYPE_2__*) ;
 int mlx5_frag_buf_alloc_node (struct mlx5_core_dev*,int ,TYPE_1__*,int ) ;
 int mlx5_init_fbc (int ,int ,int ,struct mlx5_frag_buf_ctrl*) ;
 int mlx5_wq_cyc_get_size (struct mlx5_wq_cyc*) ;
 int wq_get_byte_sz (int ,int ) ;

int mlx5_wq_cyc_create(struct mlx5_core_dev *mdev, struct mlx5_wq_param *param,
         void *wqc, struct mlx5_wq_cyc *wq,
         struct mlx5_wq_ctrl *wq_ctrl)
{
 u8 log_wq_stride = MLX5_GET(wq, wqc, log_wq_stride);
 u8 log_wq_sz = MLX5_GET(wq, wqc, log_wq_sz);
 struct mlx5_frag_buf_ctrl *fbc = &wq->fbc;
 int err;

 err = mlx5_db_alloc_node(mdev, &wq_ctrl->db, param->db_numa_node);
 if (err) {
  mlx5_core_warn(mdev, "mlx5_db_alloc_node() failed, %d\n", err);
  return err;
 }

 wq->db = wq_ctrl->db.db;

 err = mlx5_frag_buf_alloc_node(mdev, wq_get_byte_sz(log_wq_sz, log_wq_stride),
           &wq_ctrl->buf, param->buf_numa_node);
 if (err) {
  mlx5_core_warn(mdev, "mlx5_frag_buf_alloc_node() failed, %d\n", err);
  goto err_db_free;
 }

 mlx5_init_fbc(wq_ctrl->buf.frags, log_wq_stride, log_wq_sz, fbc);
 wq->sz = mlx5_wq_cyc_get_size(wq);

 wq_ctrl->mdev = mdev;

 return 0;

err_db_free:
 mlx5_db_free(mdev, &wq_ctrl->db);

 return err;
}
