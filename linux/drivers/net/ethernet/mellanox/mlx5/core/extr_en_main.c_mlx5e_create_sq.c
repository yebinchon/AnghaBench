
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mlx5e_sq_param {int sqc; } ;
struct mlx5e_create_sq_param {int tis_lst_sz; int tisn; int cqn; int min_inline_mode; TYPE_4__* wq_ctrl; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_7__ {TYPE_1__ bfreg; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;
typedef int __be64 ;
struct TYPE_10__ {int npages; int page_shift; } ;
struct TYPE_8__ {int dma; } ;
struct TYPE_9__ {TYPE_5__ buf; TYPE_3__ db; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_ADAPTER_PAGE_SHIFT ;
 void* MLX5_ADDR_OF (void*,void*,void*) ;
 scalar_t__ MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_INLINE_MODE_VPORT_CONTEXT ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_SET64 (void*,void*,int ,int ) ;
 int MLX5_SQC_STATE_RST ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int MLX5_WQ_TYPE_CYCLIC ;
 int cqn ;
 void* create_sq_in ;
 void* ctx ;
 int dbr_addr ;
 int flush_in_error_en ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int log_wq_pg_sz ;
 int memcpy (void*,int ,int) ;
 int min_wqe_inline_mode ;
 int mlx5_core_create_sq (struct mlx5_core_dev*,void*,int,int *) ;
 int mlx5_fill_page_frag_array (TYPE_5__*,int *) ;
 void* pas ;
 int state ;
 int tis_lst_sz ;
 int tis_num_0 ;
 int uar_page ;
 int wq_type ;
 int wqe_inline_mode ;

__attribute__((used)) static int mlx5e_create_sq(struct mlx5_core_dev *mdev,
      struct mlx5e_sq_param *param,
      struct mlx5e_create_sq_param *csp,
      u32 *sqn)
{
 void *in;
 void *sqc;
 void *wq;
 int inlen;
 int err;

 inlen = MLX5_ST_SZ_BYTES(create_sq_in) +
  sizeof(u64) * csp->wq_ctrl->buf.npages;
 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 sqc = MLX5_ADDR_OF(create_sq_in, in, ctx);
 wq = MLX5_ADDR_OF(sqc, sqc, wq);

 memcpy(sqc, param->sqc, sizeof(param->sqc));
 MLX5_SET(sqc, sqc, tis_lst_sz, csp->tis_lst_sz);
 MLX5_SET(sqc, sqc, tis_num_0, csp->tisn);
 MLX5_SET(sqc, sqc, cqn, csp->cqn);

 if (MLX5_CAP_ETH(mdev, wqe_inline_mode) == MLX5_CAP_INLINE_MODE_VPORT_CONTEXT)
  MLX5_SET(sqc, sqc, min_wqe_inline_mode, csp->min_inline_mode);

 MLX5_SET(sqc, sqc, state, MLX5_SQC_STATE_RST);
 MLX5_SET(sqc, sqc, flush_in_error_en, 1);

 MLX5_SET(wq, wq, wq_type, MLX5_WQ_TYPE_CYCLIC);
 MLX5_SET(wq, wq, uar_page, mdev->mlx5e_res.bfreg.index);
 MLX5_SET(wq, wq, log_wq_pg_sz, csp->wq_ctrl->buf.page_shift -
       MLX5_ADAPTER_PAGE_SHIFT);
 MLX5_SET64(wq, wq, dbr_addr, csp->wq_ctrl->db.dma);

 mlx5_fill_page_frag_array(&csp->wq_ctrl->buf,
      (__be64 *)MLX5_ADDR_OF(wq, wq, pas));

 err = mlx5_core_create_sq(mdev, in, inlen, sqn);

 kvfree(in);

 return err;
}
