
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int wq; } ;


 int destroy_workqueue (int ) ;
 int kfree (struct mlx5_lag*) ;

__attribute__((used)) static void mlx5_lag_dev_free(struct mlx5_lag *ldev)
{
 destroy_workqueue(ldev->wq);
 kfree(ldev);
}
