
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_afa_counter {int counter_index; int resource; } ;
struct mlxsw_afa_block {TYPE_2__* afa; } ;
struct TYPE_4__ {int ops_priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* counter_index_put ) (int ,int ) ;} ;


 int kfree (struct mlxsw_afa_counter*) ;
 int mlxsw_afa_resource_del (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
mlxsw_afa_counter_destroy(struct mlxsw_afa_block *block,
     struct mlxsw_afa_counter *counter)
{
 mlxsw_afa_resource_del(&counter->resource);
 block->afa->ops->counter_index_put(block->afa->ops_priv,
        counter->counter_index);
 kfree(counter);
}
