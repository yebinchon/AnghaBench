
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int is_first; int enc_actions; } ;
struct mlxsw_afa_set {int shared; int ht_node; int * prev; TYPE_2__ ht_key; int kvdl_index; } ;
struct mlxsw_afa {int set_ht; int ops_priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* kvdl_set_add ) (int ,int *,int ,int ) ;} ;


 int mlxsw_afa_set_ht_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (int ,int *,int ,int ) ;

__attribute__((used)) static int mlxsw_afa_set_share(struct mlxsw_afa *mlxsw_afa,
          struct mlxsw_afa_set *set)
{
 int err;

 err = rhashtable_insert_fast(&mlxsw_afa->set_ht, &set->ht_node,
         mlxsw_afa_set_ht_params);
 if (err)
  return err;
 err = mlxsw_afa->ops->kvdl_set_add(mlxsw_afa->ops_priv,
        &set->kvdl_index,
        set->ht_key.enc_actions,
        set->ht_key.is_first);
 if (err)
  goto err_kvdl_set_add;
 set->shared = 1;
 set->prev = ((void*)0);
 return 0;

err_kvdl_set_add:
 rhashtable_remove_fast(&mlxsw_afa->set_ht, &set->ht_node,
          mlxsw_afa_set_ht_params);
 return err;
}
