
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid {int nve_type; int vni_valid; } ;
typedef enum mlxsw_sp_nve_type { ____Placeholder_mlxsw_sp_nve_type } mlxsw_sp_nve_type ;


 int EINVAL ;

int mlxsw_sp_fid_nve_type(const struct mlxsw_sp_fid *fid,
     enum mlxsw_sp_nve_type *p_type)
{
 if (!fid->vni_valid)
  return -EINVAL;

 *p_type = fid->nve_type;

 return 0;
}
