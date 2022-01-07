
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;


 scalar_t__ MLXSW_PORT_ADMIN_STATUS_UP ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PAOS_LEN ;
 scalar_t__ mlxsw_reg_paos_oper_status_get (char*) ;
 int mlxsw_reg_paos_pack (char*,int ,int ) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int paos ;

__attribute__((used)) static int mlxsw_sx_port_oper_status_get(struct mlxsw_sx_port *mlxsw_sx_port,
      bool *p_is_up)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char paos_pl[MLXSW_REG_PAOS_LEN];
 u8 oper_status;
 int err;

 mlxsw_reg_paos_pack(paos_pl, mlxsw_sx_port->local_port, 0);
 err = mlxsw_reg_query(mlxsw_sx->core, MLXSW_REG(paos), paos_pl);
 if (err)
  return err;
 oper_status = mlxsw_reg_paos_oper_status_get(paos_pl);
 *p_is_up = oper_status == MLXSW_PORT_ADMIN_STATUS_UP ? 1 : 0;
 return 0;
}
