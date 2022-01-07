
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ module; } ;
struct mlxsw_sx_port {TYPE_1__ mapping; } ;
typedef enum mlxsw_reg_pude_oper_status { ____Placeholder_mlxsw_reg_pude_oper_status } mlxsw_reg_pude_oper_status ;


 int MLXSW_PORT_OPER_STATUS_UP ;
 int pr_info (char*,scalar_t__) ;

__attribute__((used)) static void mlxsw_sx_pude_ib_event_func(struct mlxsw_sx_port *mlxsw_sx_port,
     enum mlxsw_reg_pude_oper_status status)
{
 if (status == MLXSW_PORT_OPER_STATUS_UP)
  pr_info("ib link for port %d - up\n",
   mlxsw_sx_port->mapping.module + 1);
 else
  pr_info("ib link for port %d - down\n",
   mlxsw_sx_port->mapping.module + 1);
}
