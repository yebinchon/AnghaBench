
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pin_config; } ;
struct TYPE_3__ {int out_work; } ;
struct mlx5_clock {TYPE_2__ ptp_info; int overflow_work; TYPE_1__ pps_info; int * ptp; int pps_nb; } ;
struct mlx5_core_dev {int * clock_info; struct mlx5_clock clock; } ;


 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int device_frequency_khz ;
 int free_page (unsigned long) ;
 int kfree (int ) ;
 int mlx5_eq_notifier_unregister (struct mlx5_core_dev*,int *) ;
 int ptp_clock_unregister (int *) ;

void mlx5_cleanup_clock(struct mlx5_core_dev *mdev)
{
 struct mlx5_clock *clock = &mdev->clock;

 if (!MLX5_CAP_GEN(mdev, device_frequency_khz))
  return;

 mlx5_eq_notifier_unregister(mdev, &clock->pps_nb);
 if (clock->ptp) {
  ptp_clock_unregister(clock->ptp);
  clock->ptp = ((void*)0);
 }

 cancel_work_sync(&clock->pps_info.out_work);
 cancel_delayed_work_sync(&clock->overflow_work);

 if (mdev->clock_info) {
  free_page((unsigned long)mdev->clock_info);
  mdev->clock_info = ((void*)0);
 }

 kfree(clock->ptp_info.pin_config);
}
