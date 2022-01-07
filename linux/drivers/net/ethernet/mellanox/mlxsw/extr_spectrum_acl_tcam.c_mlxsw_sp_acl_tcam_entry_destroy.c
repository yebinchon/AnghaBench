
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_ops {int (* entry_del ) (struct mlxsw_sp*,int ,int ,int ) ;} ;
struct mlxsw_sp_acl_tcam_entry {int priv; TYPE_2__* chunk; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;
struct TYPE_4__ {int priv; TYPE_1__* region; } ;
struct TYPE_3__ {int priv; } ;


 int kfree (struct mlxsw_sp_acl_tcam_entry*) ;
 int stub1 (struct mlxsw_sp*,int ,int ,int ) ;

__attribute__((used)) static void mlxsw_sp_acl_tcam_entry_destroy(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_tcam_entry *entry)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

 ops->entry_del(mlxsw_sp, entry->chunk->region->priv,
         entry->chunk->priv, entry->priv);
 kfree(entry);
}
