
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_icm_dm {int obj_id; int addr; int length; int type; } ;
struct mlx5dr_icm_mr {int mkey; int mr_list; struct mlx5dr_icm_dm dm; TYPE_2__* pool; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dmn; } ;
struct TYPE_3__ {struct mlx5_core_dev* mdev; } ;


 int kvfree (struct mlx5dr_icm_mr*) ;
 int list_del (int *) ;
 int mlx5_core_destroy_mkey (struct mlx5_core_dev*,int *) ;
 int mlx5_dm_sw_icm_dealloc (struct mlx5_core_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dr_icm_pool_mr_destroy(struct mlx5dr_icm_mr *icm_mr)
{
 struct mlx5_core_dev *mdev = icm_mr->pool->dmn->mdev;
 struct mlx5dr_icm_dm *dm = &icm_mr->dm;

 list_del(&icm_mr->mr_list);
 mlx5_core_destroy_mkey(mdev, &icm_mr->mkey);
 mlx5_dm_sw_icm_dealloc(mdev, dm->type, dm->length, 0,
          dm->addr, dm->obj_id);
 kvfree(icm_mr);
}
