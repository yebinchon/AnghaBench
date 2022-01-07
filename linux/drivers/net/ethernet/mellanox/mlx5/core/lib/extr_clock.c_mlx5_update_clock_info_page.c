
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_ib_clock_info {int sign; int frac; int nsec; int mult; int cycles; } ;
struct TYPE_4__ {int frac; int nsec; int cycle_last; } ;
struct TYPE_3__ {int mult; } ;
struct mlx5_clock {TYPE_2__ tc; TYPE_1__ cycles; } ;
struct mlx5_core_dev {struct mlx5_clock clock; struct mlx5_ib_clock_info* clock_info; } ;


 int MLX5_IB_CLOCK_INFO_KERNEL_UPDATING ;
 int smp_load_acquire (int *) ;
 int smp_store_mb (int ,int) ;
 int smp_store_release (int *,int) ;

__attribute__((used)) static void mlx5_update_clock_info_page(struct mlx5_core_dev *mdev)
{
 struct mlx5_ib_clock_info *clock_info = mdev->clock_info;
 struct mlx5_clock *clock = &mdev->clock;
 u32 sign;

 if (!clock_info)
  return;

 sign = smp_load_acquire(&clock_info->sign);
 smp_store_mb(clock_info->sign,
       sign | MLX5_IB_CLOCK_INFO_KERNEL_UPDATING);

 clock_info->cycles = clock->tc.cycle_last;
 clock_info->mult = clock->cycles.mult;
 clock_info->nsec = clock->tc.nsec;
 clock_info->frac = clock->tc.frac;

 smp_store_release(&clock_info->sign,
     sign + MLX5_IB_CLOCK_INFO_KERNEL_UPDATING * 2);
}
