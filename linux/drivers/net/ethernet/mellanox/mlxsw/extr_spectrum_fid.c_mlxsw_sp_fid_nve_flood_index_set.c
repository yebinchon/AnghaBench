
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_fid_ops {int (* nve_flood_index_set ) (struct mlxsw_sp_fid*,int ) ;} ;
struct mlxsw_sp_fid_family {struct mlxsw_sp_fid_ops* ops; } ;
struct mlxsw_sp_fid {int nve_flood_index_valid; int nve_flood_index; struct mlxsw_sp_fid_family* fid_family; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int stub1 (struct mlxsw_sp_fid*,int ) ;

int mlxsw_sp_fid_nve_flood_index_set(struct mlxsw_sp_fid *fid,
         u32 nve_flood_index)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 const struct mlxsw_sp_fid_ops *ops = fid_family->ops;
 int err;

 if (WARN_ON(!ops->nve_flood_index_set || fid->nve_flood_index_valid))
  return -EINVAL;

 err = ops->nve_flood_index_set(fid, nve_flood_index);
 if (err)
  return err;

 fid->nve_flood_index = nve_flood_index;
 fid->nve_flood_index_valid = 1;

 return 0;
}
