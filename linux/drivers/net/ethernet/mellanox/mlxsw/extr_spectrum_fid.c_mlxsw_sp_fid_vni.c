
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid {int vni; int vni_valid; } ;
typedef int __be32 ;


 int EINVAL ;

int mlxsw_sp_fid_vni(const struct mlxsw_sp_fid *fid, __be32 *vni)
{
 if (!fid->vni_valid)
  return -EINVAL;

 *vni = fid->vni;

 return 0;
}
