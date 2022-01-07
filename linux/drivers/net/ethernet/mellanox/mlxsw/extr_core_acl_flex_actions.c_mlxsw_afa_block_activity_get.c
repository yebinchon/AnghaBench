
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_afa_block {TYPE_2__* afa; } ;
struct TYPE_4__ {int ops_priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* kvdl_set_activity_get ) (int ,int ,int*) ;} ;


 int mlxsw_afa_block_first_kvdl_index (struct mlxsw_afa_block*) ;
 int stub1 (int ,int ,int*) ;

int mlxsw_afa_block_activity_get(struct mlxsw_afa_block *block, bool *activity)
{
 u32 kvdl_index = mlxsw_afa_block_first_kvdl_index(block);

 return block->afa->ops->kvdl_set_activity_get(block->afa->ops_priv,
            kvdl_index, activity);
}
