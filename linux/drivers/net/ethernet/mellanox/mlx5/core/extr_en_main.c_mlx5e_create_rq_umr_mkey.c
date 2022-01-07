
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int wq; } ;
struct mlx5e_rq {int umr_mkey; TYPE_1__ mpwqe; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_REQUIRED_MTTS (int ) ;
 int PAGE_SHIFT ;
 int mlx5_wq_ll_get_size (int *) ;
 int mlx5e_create_umr_mkey (struct mlx5_core_dev*,int ,int ,int *) ;

__attribute__((used)) static int mlx5e_create_rq_umr_mkey(struct mlx5_core_dev *mdev, struct mlx5e_rq *rq)
{
 u64 num_mtts = MLX5E_REQUIRED_MTTS(mlx5_wq_ll_get_size(&rq->mpwqe.wq));

 return mlx5e_create_umr_mkey(mdev, num_mtts, PAGE_SHIFT, &rq->umr_mkey);
}
