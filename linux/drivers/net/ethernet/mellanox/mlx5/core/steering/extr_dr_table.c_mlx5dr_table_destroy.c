
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_table {TYPE_2__* dmn; TYPE_1__* miss_action; int refcount; } ;
struct TYPE_4__ {int refcount; } ;
struct TYPE_3__ {int refcount; } ;


 int EBUSY ;
 int dr_table_destroy_sw_owned_tbl (struct mlx5dr_table*) ;
 int dr_table_uninit (struct mlx5dr_table*) ;
 int kfree (struct mlx5dr_table*) ;
 int refcount_dec (int *) ;
 int refcount_read (int *) ;

int mlx5dr_table_destroy(struct mlx5dr_table *tbl)
{
 int ret;

 if (refcount_read(&tbl->refcount) > 1)
  return -EBUSY;

 ret = dr_table_destroy_sw_owned_tbl(tbl);
 if (ret)
  return ret;

 dr_table_uninit(tbl);

 if (tbl->miss_action)
  refcount_dec(&tbl->miss_action->refcount);

 refcount_dec(&tbl->dmn->refcount);
 kfree(tbl);

 return ret;
}
