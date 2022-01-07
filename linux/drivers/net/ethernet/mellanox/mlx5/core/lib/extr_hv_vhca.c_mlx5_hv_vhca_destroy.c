
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hv_vhca {int work_queue; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_hv_vhca*) ;
 int destroy_workqueue (int ) ;
 int kfree (struct mlx5_hv_vhca*) ;

void mlx5_hv_vhca_destroy(struct mlx5_hv_vhca *hv_vhca)
{
 if (IS_ERR_OR_NULL(hv_vhca))
  return;

 destroy_workqueue(hv_vhca->work_queue);
 kfree(hv_vhca);
}
