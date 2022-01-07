
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_FID_TYPE_DUMMY ;
 struct mlxsw_sp_fid* mlxsw_sp_fid_get (struct mlxsw_sp*,int ,int *) ;

struct mlxsw_sp_fid *mlxsw_sp_fid_dummy_get(struct mlxsw_sp *mlxsw_sp)
{
 return mlxsw_sp_fid_get(mlxsw_sp, MLXSW_SP_FID_TYPE_DUMMY, ((void*)0));
}
