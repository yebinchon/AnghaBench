
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid_ops {int (* vni_clear ) (struct mlxsw_sp_fid*) ;} ;
struct mlxsw_sp_fid_family {struct mlxsw_sp* mlxsw_sp; struct mlxsw_sp_fid_ops* ops; } ;
struct mlxsw_sp_fid {int vni_valid; int vni_ht_node; struct mlxsw_sp_fid_family* fid_family; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
struct TYPE_2__ {int vni_ht; } ;


 scalar_t__ WARN_ON (int) ;
 int mlxsw_sp_fid_vni_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (struct mlxsw_sp_fid*) ;

void mlxsw_sp_fid_vni_clear(struct mlxsw_sp_fid *fid)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 const struct mlxsw_sp_fid_ops *ops = fid_family->ops;
 struct mlxsw_sp *mlxsw_sp = fid_family->mlxsw_sp;

 if (WARN_ON(!ops->vni_clear || !fid->vni_valid))
  return;

 fid->vni_valid = 0;
 ops->vni_clear(fid);
 rhashtable_remove_fast(&mlxsw_sp->fid_core->vni_ht, &fid->vni_ht_node,
          mlxsw_sp_fid_vni_ht_params);
}
