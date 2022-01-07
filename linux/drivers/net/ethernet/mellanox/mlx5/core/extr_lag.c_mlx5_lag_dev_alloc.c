
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int bond_work; int wq; } ;


 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int kfree (struct mlx5_lag*) ;
 struct mlx5_lag* kzalloc (int,int ) ;
 int mlx5_do_bond_work ;

__attribute__((used)) static struct mlx5_lag *mlx5_lag_dev_alloc(void)
{
 struct mlx5_lag *ldev;

 ldev = kzalloc(sizeof(*ldev), GFP_KERNEL);
 if (!ldev)
  return ((void*)0);

 ldev->wq = create_singlethread_workqueue("mlx5_lag");
 if (!ldev->wq) {
  kfree(ldev);
  return ((void*)0);
 }

 INIT_DELAYED_WORK(&ldev->bond_work, mlx5_do_bond_work);

 return ldev;
}
