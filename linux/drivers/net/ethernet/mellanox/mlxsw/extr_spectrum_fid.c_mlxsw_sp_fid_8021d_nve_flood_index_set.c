
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_fid_family {int mlxsw_sp; } ;
struct mlxsw_sp_fid {int vni_valid; int vni; int fid_index; struct mlxsw_sp_fid_family* fid_family; } ;


 int mlxsw_sp_fid_vni_op (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int mlxsw_sp_fid_8021d_nve_flood_index_set(struct mlxsw_sp_fid *fid,
        u32 nve_flood_index)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;

 return mlxsw_sp_fid_vni_op(fid_family->mlxsw_sp, fid->fid_index,
       fid->vni, fid->vni_valid, nve_flood_index,
       1);
}
