
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ enabled; } ;
struct mlx4_fmr {TYPE_2__ mr; TYPE_1__* mpt; scalar_t__ maps; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ length; } ;


 int EBUSY ;
 scalar_t__ MLX4_MPT_DISABLED ;
 scalar_t__ MLX4_MPT_EN_HW ;
 int MLX4_MPT_STATUS_HW ;
 int MLX4_MPT_STATUS_SW ;
 int mlx4_mr_free (struct mlx4_dev*,TYPE_2__*) ;
 int wmb () ;

int mlx4_fmr_free(struct mlx4_dev *dev, struct mlx4_fmr *fmr)
{
 int ret;

 if (fmr->maps)
  return -EBUSY;
 if (fmr->mr.enabled == MLX4_MPT_EN_HW) {




  *(u8 *)fmr->mpt = MLX4_MPT_STATUS_SW;

  wmb();
  fmr->mpt->length = 0;
  fmr->mpt->start = 0;

  wmb();
  *(u8 *)fmr->mpt = MLX4_MPT_STATUS_HW;

  wmb();
 }

 ret = mlx4_mr_free(dev, &fmr->mr);
 if (ret)
  return ret;
 fmr->mr.enabled = MLX4_MPT_DISABLED;

 return 0;
}
