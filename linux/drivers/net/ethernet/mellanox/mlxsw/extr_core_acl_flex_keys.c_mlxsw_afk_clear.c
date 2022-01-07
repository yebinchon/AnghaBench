
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_afk {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* clear_block ) (char*,int) ;} ;


 int stub1 (char*,int) ;

void mlxsw_afk_clear(struct mlxsw_afk *mlxsw_afk, char *key,
       int block_start, int block_end)
{
 int i;

 for (i = block_start; i <= block_end; i++)
  mlxsw_afk->ops->clear_block(key, i);
}
