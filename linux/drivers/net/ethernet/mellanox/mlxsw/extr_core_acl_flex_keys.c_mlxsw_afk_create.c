
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_ops {int blocks_count; int blocks; } ;
struct mlxsw_afk {unsigned int max_blocks; int blocks_count; int blocks; struct mlxsw_afk_ops const* ops; int key_info_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 struct mlxsw_afk* kzalloc (int,int ) ;
 int mlxsw_afk_blocks_check (struct mlxsw_afk*) ;

struct mlxsw_afk *mlxsw_afk_create(unsigned int max_blocks,
       const struct mlxsw_afk_ops *ops)
{
 struct mlxsw_afk *mlxsw_afk;

 mlxsw_afk = kzalloc(sizeof(*mlxsw_afk), GFP_KERNEL);
 if (!mlxsw_afk)
  return ((void*)0);
 INIT_LIST_HEAD(&mlxsw_afk->key_info_list);
 mlxsw_afk->max_blocks = max_blocks;
 mlxsw_afk->ops = ops;
 mlxsw_afk->blocks = ops->blocks;
 mlxsw_afk->blocks_count = ops->blocks_count;
 WARN_ON(!mlxsw_afk_blocks_check(mlxsw_afk));
 return mlxsw_afk;
}
