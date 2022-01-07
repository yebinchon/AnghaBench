
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int local_port; } ;
struct mlxsw_afa_fwd_entry {int ref_count; int ht_node; int kvdl_index; TYPE_2__ ht_key; } ;
struct mlxsw_afa {int fwd_entry_ht; int ops_priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* kvdl_fwd_entry_add ) (int ,int *,int ) ;} ;


 int ENOMEM ;
 struct mlxsw_afa_fwd_entry* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct mlxsw_afa_fwd_entry*) ;
 struct mlxsw_afa_fwd_entry* kzalloc (int,int ) ;
 int mlxsw_afa_fwd_entry_ht_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static struct mlxsw_afa_fwd_entry *
mlxsw_afa_fwd_entry_create(struct mlxsw_afa *mlxsw_afa, u8 local_port)
{
 struct mlxsw_afa_fwd_entry *fwd_entry;
 int err;

 fwd_entry = kzalloc(sizeof(*fwd_entry), GFP_KERNEL);
 if (!fwd_entry)
  return ERR_PTR(-ENOMEM);
 fwd_entry->ht_key.local_port = local_port;
 fwd_entry->ref_count = 1;

 err = rhashtable_insert_fast(&mlxsw_afa->fwd_entry_ht,
         &fwd_entry->ht_node,
         mlxsw_afa_fwd_entry_ht_params);
 if (err)
  goto err_rhashtable_insert;

 err = mlxsw_afa->ops->kvdl_fwd_entry_add(mlxsw_afa->ops_priv,
       &fwd_entry->kvdl_index,
       local_port);
 if (err)
  goto err_kvdl_fwd_entry_add;
 return fwd_entry;

err_kvdl_fwd_entry_add:
 rhashtable_remove_fast(&mlxsw_afa->fwd_entry_ht, &fwd_entry->ht_node,
          mlxsw_afa_fwd_entry_ht_params);
err_rhashtable_insert:
 kfree(fwd_entry);
 return ERR_PTR(err);
}
