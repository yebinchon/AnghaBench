
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_tir {int list; int tirn; } ;
struct TYPE_3__ {int list_lock; } ;
struct TYPE_4__ {TYPE_1__ td; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;


 int list_del (int *) ;
 int mlx5_core_destroy_tir (struct mlx5_core_dev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5e_destroy_tir(struct mlx5_core_dev *mdev,
         struct mlx5e_tir *tir)
{
 mutex_lock(&mdev->mlx5e_res.td.list_lock);
 mlx5_core_destroy_tir(mdev, tir->tirn);
 list_del(&tir->list);
 mutex_unlock(&mdev->mlx5e_res.td.list_lock);
}
