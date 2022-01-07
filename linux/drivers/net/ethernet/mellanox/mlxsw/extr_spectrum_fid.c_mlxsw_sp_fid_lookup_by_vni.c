
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid {int ref_count; } ;
struct mlxsw_sp {TYPE_1__* fid_core; } ;
typedef int __be32 ;
struct TYPE_2__ {int vni_ht; } ;


 int mlxsw_sp_fid_vni_ht_params ;
 struct mlxsw_sp_fid* rhashtable_lookup_fast (int *,int *,int ) ;

struct mlxsw_sp_fid *mlxsw_sp_fid_lookup_by_vni(struct mlxsw_sp *mlxsw_sp,
      __be32 vni)
{
 struct mlxsw_sp_fid *fid;

 fid = rhashtable_lookup_fast(&mlxsw_sp->fid_core->vni_ht, &vni,
         mlxsw_sp_fid_vni_ht_params);
 if (fid)
  fid->ref_count++;

 return fid;
}
