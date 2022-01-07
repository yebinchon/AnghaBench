
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_roce_gid_set (struct mlx5_core_dev*,int ,int ,int ,int *,int *,int,int ,int ) ;

__attribute__((used)) static void mlx5_rdma_del_roce_addr(struct mlx5_core_dev *dev)
{
 mlx5_core_roce_gid_set(dev, 0, 0, 0,
          ((void*)0), ((void*)0), 0, 0, 0);
}
