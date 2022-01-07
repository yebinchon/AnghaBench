
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tdn; int list_lock; int tirs_list; } ;
struct mlx5e_resources {int pdn; TYPE_1__ td; int mkey; int bfreg; } ;
struct mlx5_core_dev {struct mlx5e_resources mlx5e_res; } ;


 int INIT_LIST_HEAD (int *) ;
 int mlx5_alloc_bfreg (struct mlx5_core_dev*,int *,int,int) ;
 int mlx5_core_alloc_pd (struct mlx5_core_dev*,int *) ;
 int mlx5_core_alloc_transport_domain (struct mlx5_core_dev*,int *) ;
 int mlx5_core_dealloc_pd (struct mlx5_core_dev*,int ) ;
 int mlx5_core_dealloc_transport_domain (struct mlx5_core_dev*,int ) ;
 int mlx5_core_destroy_mkey (struct mlx5_core_dev*,int *) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,int) ;
 int mlx5e_create_mkey (struct mlx5_core_dev*,int ,int *) ;
 int mutex_init (int *) ;

int mlx5e_create_mdev_resources(struct mlx5_core_dev *mdev)
{
 struct mlx5e_resources *res = &mdev->mlx5e_res;
 int err;

 err = mlx5_core_alloc_pd(mdev, &res->pdn);
 if (err) {
  mlx5_core_err(mdev, "alloc pd failed, %d\n", err);
  return err;
 }

 err = mlx5_core_alloc_transport_domain(mdev, &res->td.tdn);
 if (err) {
  mlx5_core_err(mdev, "alloc td failed, %d\n", err);
  goto err_dealloc_pd;
 }

 err = mlx5e_create_mkey(mdev, res->pdn, &res->mkey);
 if (err) {
  mlx5_core_err(mdev, "create mkey failed, %d\n", err);
  goto err_dealloc_transport_domain;
 }

 err = mlx5_alloc_bfreg(mdev, &res->bfreg, 0, 0);
 if (err) {
  mlx5_core_err(mdev, "alloc bfreg failed, %d\n", err);
  goto err_destroy_mkey;
 }

 INIT_LIST_HEAD(&mdev->mlx5e_res.td.tirs_list);
 mutex_init(&mdev->mlx5e_res.td.list_lock);

 return 0;

err_destroy_mkey:
 mlx5_core_destroy_mkey(mdev, &res->mkey);
err_dealloc_transport_domain:
 mlx5_core_dealloc_transport_domain(mdev, res->td.tdn);
err_dealloc_pd:
 mlx5_core_dealloc_pd(mdev, res->pdn);
 return err;
}
