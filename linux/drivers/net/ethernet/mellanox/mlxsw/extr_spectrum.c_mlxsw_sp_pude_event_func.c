
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int shaper_dw; } ;
struct mlxsw_sp_port {int dev; TYPE_1__ ptp; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; } ;
struct mlxsw_reg_info {int dummy; } ;
typedef enum mlxsw_reg_pude_oper_status { ____Placeholder_mlxsw_reg_pude_oper_status } mlxsw_reg_pude_oper_status ;


 int MLXSW_PORT_OPER_STATUS_UP ;
 int mlxsw_core_schedule_dw (int *,int ) ;
 size_t mlxsw_reg_pude_local_port_get (char*) ;
 int mlxsw_reg_pude_oper_status_get (char*) ;
 int netdev_info (int ,char*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static void mlxsw_sp_pude_event_func(const struct mlxsw_reg_info *reg,
         char *pude_pl, void *priv)
{
 struct mlxsw_sp *mlxsw_sp = priv;
 struct mlxsw_sp_port *mlxsw_sp_port;
 enum mlxsw_reg_pude_oper_status status;
 u8 local_port;

 local_port = mlxsw_reg_pude_local_port_get(pude_pl);
 mlxsw_sp_port = mlxsw_sp->ports[local_port];
 if (!mlxsw_sp_port)
  return;

 status = mlxsw_reg_pude_oper_status_get(pude_pl);
 if (status == MLXSW_PORT_OPER_STATUS_UP) {
  netdev_info(mlxsw_sp_port->dev, "link up\n");
  netif_carrier_on(mlxsw_sp_port->dev);
  mlxsw_core_schedule_dw(&mlxsw_sp_port->ptp.shaper_dw, 0);
 } else {
  netdev_info(mlxsw_sp_port->dev, "link down\n");
  netif_carrier_off(mlxsw_sp_port->dev);
 }
}
