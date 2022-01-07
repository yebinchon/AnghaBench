
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_FID_TYPE_8021D ;
 struct mlxsw_sp_fid* mlxsw_sp_fid_lookup (struct mlxsw_sp*,int ,int*) ;

struct mlxsw_sp_fid *mlxsw_sp_fid_8021d_lookup(struct mlxsw_sp *mlxsw_sp,
            int br_ifindex)
{
 return mlxsw_sp_fid_lookup(mlxsw_sp, MLXSW_SP_FID_TYPE_8021D,
       &br_ifindex);
}
