
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid {int fid_index; TYPE_1__* fid_family; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {struct mlxsw_sp* mlxsw_sp; } ;


 int mlxsw_sp_fid_op (struct mlxsw_sp*,int ,int ,int) ;

__attribute__((used)) static int mlxsw_sp_fid_dummy_configure(struct mlxsw_sp_fid *fid)
{
 struct mlxsw_sp *mlxsw_sp = fid->fid_family->mlxsw_sp;

 return mlxsw_sp_fid_op(mlxsw_sp, fid->fid_index, 0, 1);
}
