
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 int mlx4_CONF_SPECIAL_QP (struct mlx4_dev*,int ) ;
 int mlx4_cleanup_qp_zones (struct mlx4_dev*) ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;

void mlx4_cleanup_qp_table(struct mlx4_dev *dev)
{
 if (mlx4_is_slave(dev))
  return;

 mlx4_CONF_SPECIAL_QP(dev, 0);

 mlx4_cleanup_qp_zones(dev);
}
