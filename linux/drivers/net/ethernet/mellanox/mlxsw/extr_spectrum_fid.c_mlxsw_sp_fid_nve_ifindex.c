
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid {int nve_ifindex; int vni_valid; } ;


 int EINVAL ;

int mlxsw_sp_fid_nve_ifindex(const struct mlxsw_sp_fid *fid, int *nve_ifindex)
{
 if (!fid->vni_valid)
  return -EINVAL;

 *nve_ifindex = fid->nve_ifindex;

 return 0;
}
