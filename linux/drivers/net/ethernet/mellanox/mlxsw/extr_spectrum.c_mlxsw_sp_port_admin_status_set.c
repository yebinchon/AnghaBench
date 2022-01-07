
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_PORT_ADMIN_STATUS_DOWN ;
 int MLXSW_PORT_ADMIN_STATUS_UP ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PAOS_LEN ;
 int mlxsw_reg_paos_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int paos ;

__attribute__((used)) static int mlxsw_sp_port_admin_status_set(struct mlxsw_sp_port *mlxsw_sp_port,
       bool is_up)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char paos_pl[MLXSW_REG_PAOS_LEN];

 mlxsw_reg_paos_pack(paos_pl, mlxsw_sp_port->local_port,
       is_up ? MLXSW_PORT_ADMIN_STATUS_UP :
       MLXSW_PORT_ADMIN_STATUS_DOWN);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(paos), paos_pl);
}
