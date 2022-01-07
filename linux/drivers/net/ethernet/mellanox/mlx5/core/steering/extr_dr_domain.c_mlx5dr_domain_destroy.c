
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_domain {int mutex; int mdev; int refcount; } ;


 int EBUSY ;
 int dr_domain_caps_uninit (struct mlx5dr_domain*) ;
 int dr_domain_uninit_cache (struct mlx5dr_domain*) ;
 int dr_domain_uninit_resources (struct mlx5dr_domain*) ;
 int kfree (struct mlx5dr_domain*) ;
 int mlx5dr_cmd_sync_steering (int ) ;
 int mutex_destroy (int *) ;
 int refcount_read (int *) ;

int mlx5dr_domain_destroy(struct mlx5dr_domain *dmn)
{
 if (refcount_read(&dmn->refcount) > 1)
  return -EBUSY;


 mlx5dr_cmd_sync_steering(dmn->mdev);
 dr_domain_uninit_cache(dmn);
 dr_domain_uninit_resources(dmn);
 dr_domain_caps_uninit(dmn);
 mutex_destroy(&dmn->mutex);
 kfree(dmn);
 return 0;
}
