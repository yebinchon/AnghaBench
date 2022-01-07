
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* sb_vals; } ;
struct TYPE_2__ {int pms; } ;


 int mlxsw_sp_sb_pms_init (struct mlxsw_sp*,int ,int ,int) ;

__attribute__((used)) static int mlxsw_sp_port_sb_pms_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;

 return mlxsw_sp_sb_pms_init(mlxsw_sp, mlxsw_sp_port->local_port,
        mlxsw_sp->sb_vals->pms, 0);
}
