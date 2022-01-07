
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;
struct devlink {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int devlink_traps_unregister (struct devlink*,int ,int ) ;
 int mlxsw_sp_traps_arr ;
 struct devlink* priv_to_devlink (int ) ;

void mlxsw_sp_devlink_traps_fini(struct mlxsw_sp *mlxsw_sp)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_sp->core);

 devlink_traps_unregister(devlink, mlxsw_sp_traps_arr,
     ARRAY_SIZE(mlxsw_sp_traps_arr));
}
