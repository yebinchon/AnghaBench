
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_hv_config_common (struct mlx5_core_dev*,void*,int,int,int) ;

int mlx5_hv_write_config(struct mlx5_core_dev *dev, void *buf, int len,
    int offset)
{
 return mlx5_hv_config_common(dev, buf, len, offset, 0);
}
