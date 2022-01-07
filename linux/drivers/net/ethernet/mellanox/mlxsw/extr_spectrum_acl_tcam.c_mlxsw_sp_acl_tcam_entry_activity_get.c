
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_acl_tcam_ops {int (* entry_activity_get ) (struct mlxsw_sp*,int ,int ,int*) ;} ;
struct mlxsw_sp_acl_tcam_entry {int priv; TYPE_2__* chunk; } ;
struct mlxsw_sp {struct mlxsw_sp_acl_tcam_ops* acl_tcam_ops; } ;
struct TYPE_4__ {TYPE_1__* region; } ;
struct TYPE_3__ {int priv; } ;


 int stub1 (struct mlxsw_sp*,int ,int ,int*) ;

__attribute__((used)) static int
mlxsw_sp_acl_tcam_entry_activity_get(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_acl_tcam_entry *entry,
         bool *activity)
{
 const struct mlxsw_sp_acl_tcam_ops *ops = mlxsw_sp->acl_tcam_ops;

 return ops->entry_activity_get(mlxsw_sp, entry->chunk->region->priv,
           entry->priv, activity);
}
