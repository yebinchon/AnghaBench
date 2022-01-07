
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid {int fid_index; TYPE_1__* fid_family; scalar_t__ vni_valid; } ;
struct TYPE_2__ {int mlxsw_sp; } ;


 int mlxsw_sp_fid_op (int ,int ,int ,int) ;
 int mlxsw_sp_nve_fid_disable (int ,struct mlxsw_sp_fid*) ;

__attribute__((used)) static void mlxsw_sp_fid_8021d_deconfigure(struct mlxsw_sp_fid *fid)
{
 if (fid->vni_valid)
  mlxsw_sp_nve_fid_disable(fid->fid_family->mlxsw_sp, fid);
 mlxsw_sp_fid_op(fid->fid_family->mlxsw_sp, fid->fid_index, 0, 0);
}
