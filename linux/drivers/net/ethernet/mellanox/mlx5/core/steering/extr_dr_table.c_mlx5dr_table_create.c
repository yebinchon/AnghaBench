
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5dr_table {int refcount; int level; struct mlx5dr_domain* dmn; } ;
struct mlx5dr_domain {int refcount; } ;


 int GFP_KERNEL ;
 int dr_table_create_sw_owned_tbl (struct mlx5dr_table*) ;
 int dr_table_init (struct mlx5dr_table*) ;
 int dr_table_uninit (struct mlx5dr_table*) ;
 int kfree (struct mlx5dr_table*) ;
 struct mlx5dr_table* kzalloc (int,int ) ;
 int refcount_dec (int *) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;

struct mlx5dr_table *mlx5dr_table_create(struct mlx5dr_domain *dmn, u32 level)
{
 struct mlx5dr_table *tbl;
 int ret;

 refcount_inc(&dmn->refcount);

 tbl = kzalloc(sizeof(*tbl), GFP_KERNEL);
 if (!tbl)
  goto dec_ref;

 tbl->dmn = dmn;
 tbl->level = level;
 refcount_set(&tbl->refcount, 1);

 ret = dr_table_init(tbl);
 if (ret)
  goto free_tbl;

 ret = dr_table_create_sw_owned_tbl(tbl);
 if (ret)
  goto uninit_tbl;

 return tbl;

uninit_tbl:
 dr_table_uninit(tbl);
free_tbl:
 kfree(tbl);
dec_ref:
 refcount_dec(&dmn->refcount);
 return ((void*)0);
}
