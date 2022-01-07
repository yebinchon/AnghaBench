
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {TYPE_1__* acl; } ;
struct TYPE_2__ {struct mlxsw_sp_fid* dummy_fid; } ;



struct mlxsw_sp_fid *mlxsw_sp_acl_dummy_fid(struct mlxsw_sp *mlxsw_sp)
{
 return mlxsw_sp->acl->dummy_fid;
}
