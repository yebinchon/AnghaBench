
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_cmd_fc_bulk_alloc (struct mlx5_core_dev*,int ,int *) ;

int mlx5_cmd_fc_alloc(struct mlx5_core_dev *dev, u32 *id)
{
 return mlx5_cmd_fc_bulk_alloc(dev, 0, id);
}
