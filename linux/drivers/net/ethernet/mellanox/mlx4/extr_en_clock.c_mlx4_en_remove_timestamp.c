
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_dev {int * ptp_clock; } ;


 int mlx4_info (struct mlx4_en_dev*,char*) ;
 int ptp_clock_unregister (int *) ;

void mlx4_en_remove_timestamp(struct mlx4_en_dev *mdev)
{
 if (mdev->ptp_clock) {
  ptp_clock_unregister(mdev->ptp_clock);
  mdev->ptp_clock = ((void*)0);
  mlx4_info(mdev, "removed PHC\n");
 }
}
