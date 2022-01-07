
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct mlxsw_sp_sb_pm {int dummy; } ;
struct mlxsw_sp {TYPE_2__* sb; } ;
struct TYPE_4__ {TYPE_1__* ports; } ;
struct TYPE_3__ {struct mlxsw_sp_sb_pm* pms; } ;



__attribute__((used)) static struct mlxsw_sp_sb_pm *mlxsw_sp_sb_pm_get(struct mlxsw_sp *mlxsw_sp,
       u8 local_port, u16 pool_index)
{
 return &mlxsw_sp->sb->ports[local_port].pms[pool_index];
}
