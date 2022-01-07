
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;
struct mlx5_core_cq {int dummy; } ;
struct dim_cq_moder {int pkts; int usec; } ;
struct dim {int state; } ;


 int DIM_START_MEASURE ;
 int mlx5_core_modify_cq_moderation (struct mlx5_core_dev*,struct mlx5_core_cq*,int ,int ) ;

__attribute__((used)) static void
mlx5e_complete_dim_work(struct dim *dim, struct dim_cq_moder moder,
   struct mlx5_core_dev *mdev, struct mlx5_core_cq *mcq)
{
 mlx5_core_modify_cq_moderation(mdev, mcq, moder.usec, moder.pkts);
 dim->state = DIM_START_MEASURE;
}
