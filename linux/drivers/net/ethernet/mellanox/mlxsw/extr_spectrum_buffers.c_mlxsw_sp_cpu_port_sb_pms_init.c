
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* sb_vals; } ;
struct TYPE_2__ {int pms_cpu; } ;


 int mlxsw_sp_sb_pms_init (struct mlxsw_sp*,int ,int ,int) ;

__attribute__((used)) static int mlxsw_sp_cpu_port_sb_pms_init(struct mlxsw_sp *mlxsw_sp)
{
 return mlxsw_sp_sb_pms_init(mlxsw_sp, 0, mlxsw_sp->sb_vals->pms_cpu,
        1);
}
