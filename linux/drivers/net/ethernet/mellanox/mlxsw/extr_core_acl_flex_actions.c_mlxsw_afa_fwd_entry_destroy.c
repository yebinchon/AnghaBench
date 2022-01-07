
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_afa_fwd_entry {int ht_node; int kvdl_index; } ;
struct mlxsw_afa {int fwd_entry_ht; int ops_priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* kvdl_fwd_entry_del ) (int ,int ) ;} ;


 int kfree (struct mlxsw_afa_fwd_entry*) ;
 int mlxsw_afa_fwd_entry_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void mlxsw_afa_fwd_entry_destroy(struct mlxsw_afa *mlxsw_afa,
     struct mlxsw_afa_fwd_entry *fwd_entry)
{
 mlxsw_afa->ops->kvdl_fwd_entry_del(mlxsw_afa->ops_priv,
        fwd_entry->kvdl_index);
 rhashtable_remove_fast(&mlxsw_afa->fwd_entry_ht, &fwd_entry->ht_node,
          mlxsw_afa_fwd_entry_ht_params);
 kfree(fwd_entry);
}
