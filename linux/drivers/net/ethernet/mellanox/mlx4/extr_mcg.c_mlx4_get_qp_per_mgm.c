
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 int mlx4_get_mgm_entry_size (struct mlx4_dev*) ;

int mlx4_get_qp_per_mgm(struct mlx4_dev *dev)
{
 return 4 * (mlx4_get_mgm_entry_size(dev) / 16 - 2);
}
