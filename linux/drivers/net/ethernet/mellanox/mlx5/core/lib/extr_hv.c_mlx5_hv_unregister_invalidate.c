
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int pdev; } ;


 int hyperv_reg_block_invalidate (int ,int *,int *) ;

void mlx5_hv_unregister_invalidate(struct mlx5_core_dev *dev)
{
 hyperv_reg_block_invalidate(dev->pdev, ((void*)0), ((void*)0));
}
