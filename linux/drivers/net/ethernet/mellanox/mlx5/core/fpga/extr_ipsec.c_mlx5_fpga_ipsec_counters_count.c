
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fpga_device {TYPE_1__* ipsec; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int caps; } ;


 unsigned int MLX5_GET (int ,int ,int ) ;
 int ipsec_extended_cap ;
 int number_of_ipsec_counters ;

unsigned int mlx5_fpga_ipsec_counters_count(struct mlx5_core_dev *mdev)
{
 struct mlx5_fpga_device *fdev = mdev->fpga;

 if (!fdev || !fdev->ipsec)
  return 0;

 return MLX5_GET(ipsec_extended_cap, fdev->ipsec->caps,
   number_of_ipsec_counters);
}
