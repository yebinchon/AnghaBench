
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid_family {int mlxsw_sp; } ;
struct mlxsw_sp_fid {int nve_flood_index_valid; int nve_flood_index; int fid_index; struct mlxsw_sp_fid_family* fid_family; } ;
typedef int __be32 ;


 int mlxsw_sp_fid_vni_op (int ,int ,int ,int,int ,int ) ;

__attribute__((used)) static int mlxsw_sp_fid_8021d_vni_set(struct mlxsw_sp_fid *fid, __be32 vni)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;

 return mlxsw_sp_fid_vni_op(fid_family->mlxsw_sp, fid->fid_index, vni,
       1, fid->nve_flood_index,
       fid->nve_flood_index_valid);
}
