
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int is_first; } ;
struct mlxsw_afa_set {int shared; int ht_node; TYPE_2__ ht_key; int kvdl_index; } ;
struct mlxsw_afa {int set_ht; int ops_priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* kvdl_set_del ) (int ,int ,int ) ;} ;


 int mlxsw_afa_set_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void mlxsw_afa_set_unshare(struct mlxsw_afa *mlxsw_afa,
      struct mlxsw_afa_set *set)
{
 mlxsw_afa->ops->kvdl_set_del(mlxsw_afa->ops_priv,
         set->kvdl_index,
         set->ht_key.is_first);
 rhashtable_remove_fast(&mlxsw_afa->set_ht, &set->ht_node,
          mlxsw_afa_set_ht_params);
 set->shared = 0;
}
