
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid_ops {int (* nve_flood_index_clear ) (struct mlxsw_sp_fid*) ;} ;
struct mlxsw_sp_fid_family {struct mlxsw_sp_fid_ops* ops; } ;
struct mlxsw_sp_fid {int nve_flood_index_valid; struct mlxsw_sp_fid_family* fid_family; } ;


 scalar_t__ WARN_ON (int) ;
 int stub1 (struct mlxsw_sp_fid*) ;

void mlxsw_sp_fid_nve_flood_index_clear(struct mlxsw_sp_fid *fid)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 const struct mlxsw_sp_fid_ops *ops = fid_family->ops;

 if (WARN_ON(!ops->nve_flood_index_clear || !fid->nve_flood_index_valid))
  return;

 fid->nve_flood_index_valid = 0;
 ops->nve_flood_index_clear(fid);
}
