
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid_ops {int (* vni_set ) (struct mlxsw_sp_fid*,int ) ;} ;
struct mlxsw_sp_fid_family {struct mlxsw_sp* mlxsw_sp; struct mlxsw_sp_fid_ops* ops; } ;
struct mlxsw_sp_fid {int vni_valid; int nve_type; int nve_ifindex; int vni_ht_node; int vni; struct mlxsw_sp_fid_family* fid_family; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
typedef enum mlxsw_sp_nve_type { ____Placeholder_mlxsw_sp_nve_type } mlxsw_sp_nve_type ;
typedef int __be32 ;
struct TYPE_2__ {int vni_ht; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int mlxsw_sp_fid_vni_ht_params ;
 int rhashtable_lookup_insert_fast (int *,int *,int ) ;
 int rhashtable_remove_fast (int *,int *,int ) ;
 int stub1 (struct mlxsw_sp_fid*,int ) ;

int mlxsw_sp_fid_vni_set(struct mlxsw_sp_fid *fid, enum mlxsw_sp_nve_type type,
    __be32 vni, int nve_ifindex)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 const struct mlxsw_sp_fid_ops *ops = fid_family->ops;
 struct mlxsw_sp *mlxsw_sp = fid_family->mlxsw_sp;
 int err;

 if (WARN_ON(!ops->vni_set || fid->vni_valid))
  return -EINVAL;

 fid->nve_type = type;
 fid->nve_ifindex = nve_ifindex;
 fid->vni = vni;
 err = rhashtable_lookup_insert_fast(&mlxsw_sp->fid_core->vni_ht,
         &fid->vni_ht_node,
         mlxsw_sp_fid_vni_ht_params);
 if (err)
  return err;

 err = ops->vni_set(fid, vni);
 if (err)
  goto err_vni_set;

 fid->vni_valid = 1;

 return 0;

err_vni_set:
 rhashtable_remove_fast(&mlxsw_sp->fid_core->vni_ht, &fid->vni_ht_node,
          mlxsw_sp_fid_vni_ht_params);
 return err;
}
