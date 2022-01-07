
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid {int fid_index; TYPE_1__* fid_family; } ;
struct TYPE_2__ {int mlxsw_sp; } ;


 int mlxsw_sp_fid_op (int ,int ,int ,int) ;

__attribute__((used)) static void mlxsw_sp_fid_dummy_deconfigure(struct mlxsw_sp_fid *fid)
{
 mlxsw_sp_fid_op(fid->fid_family->mlxsw_sp, fid->fid_index, 0, 0);
}
