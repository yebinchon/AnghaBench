
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_tir {int list; int tirn; } ;
struct TYPE_3__ {int list_lock; int tirs_list; } ;
struct TYPE_4__ {TYPE_1__ td; } ;
struct mlx5_core_dev {TYPE_2__ mlx5e_res; } ;


 int list_add (int *,int *) ;
 int mlx5_core_create_tir (struct mlx5_core_dev*,int *,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5e_create_tir(struct mlx5_core_dev *mdev,
       struct mlx5e_tir *tir, u32 *in, int inlen)
{
 int err;

 err = mlx5_core_create_tir(mdev, in, inlen, &tir->tirn);
 if (err)
  return err;

 mutex_lock(&mdev->mlx5e_res.td.list_lock);
 list_add(&tir->list, &mdev->mlx5e_res.td.tirs_list);
 mutex_unlock(&mdev->mlx5e_res.td.list_lock);

 return 0;
}
