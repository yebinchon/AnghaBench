
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_roce {int ft; } ;
struct TYPE_2__ {struct mlx5_core_roce roce; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int mlx5_nic_vport_disable_roce (struct mlx5_core_dev*) ;
 int mlx5_rdma_del_roce_addr (struct mlx5_core_dev*) ;
 int mlx5_rdma_disable_roce_steering (struct mlx5_core_dev*) ;

void mlx5_rdma_disable_roce(struct mlx5_core_dev *dev)
{
 struct mlx5_core_roce *roce = &dev->priv.roce;

 if (!roce->ft)
  return;

 mlx5_rdma_disable_roce_steering(dev);
 mlx5_rdma_del_roce_addr(dev);
 mlx5_nic_vport_disable_roce(dev);
}
