
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx4_fmr {scalar_t__ maps; scalar_t__ mpt; } ;
struct mlx4_dev {int dummy; } ;


 int MLX4_MPT_STATUS_SW ;
 int wmb () ;

void mlx4_fmr_unmap(struct mlx4_dev *dev, struct mlx4_fmr *fmr,
      u32 *lkey, u32 *rkey)
{
 if (!fmr->maps)
  return;


 *(u8 *)fmr->mpt = MLX4_MPT_STATUS_SW;


 wmb();

 fmr->maps = 0;
}
