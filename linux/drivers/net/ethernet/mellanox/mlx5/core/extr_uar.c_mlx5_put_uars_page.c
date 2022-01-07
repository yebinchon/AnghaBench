
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_uars_page {int ref_count; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_5__ {TYPE_1__ reg_head; } ;
struct TYPE_6__ {TYPE_2__ bfregs; } ;
struct mlx5_core_dev {TYPE_3__ priv; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_rel_func ;

void mlx5_put_uars_page(struct mlx5_core_dev *mdev, struct mlx5_uars_page *up)
{
 mutex_lock(&mdev->priv.bfregs.reg_head.lock);
 kref_put(&up->ref_count, up_rel_func);
 mutex_unlock(&mdev->priv.bfregs.reg_head.lock);
}
