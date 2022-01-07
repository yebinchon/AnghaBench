
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tdn; } ;
struct mlx5e_resources {int pdn; TYPE_1__ td; int mkey; int bfreg; } ;
struct mlx5_core_dev {struct mlx5e_resources mlx5e_res; } ;


 int memset (struct mlx5e_resources*,int ,int) ;
 int mlx5_core_dealloc_pd (struct mlx5_core_dev*,int ) ;
 int mlx5_core_dealloc_transport_domain (struct mlx5_core_dev*,int ) ;
 int mlx5_core_destroy_mkey (struct mlx5_core_dev*,int *) ;
 int mlx5_free_bfreg (struct mlx5_core_dev*,int *) ;

void mlx5e_destroy_mdev_resources(struct mlx5_core_dev *mdev)
{
 struct mlx5e_resources *res = &mdev->mlx5e_res;

 mlx5_free_bfreg(mdev, &res->bfreg);
 mlx5_core_destroy_mkey(mdev, &res->mkey);
 mlx5_core_dealloc_transport_domain(mdev, res->td.tdn);
 mlx5_core_dealloc_pd(mdev, res->pdn);
 memset(res, 0, sizeof(*res));
}
