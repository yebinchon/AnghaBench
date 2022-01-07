
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid {int vni_valid; } ;



bool mlxsw_sp_fid_vni_is_set(const struct mlxsw_sp_fid *fid)
{
 return fid->vni_valid;
}
