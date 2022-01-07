
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sx_port {int dev; } ;
typedef enum mlxsw_reg_pude_oper_status { ____Placeholder_mlxsw_reg_pude_oper_status } mlxsw_reg_pude_oper_status ;


 int MLXSW_PORT_OPER_STATUS_UP ;
 int netdev_info (int ,char*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static void mlxsw_sx_pude_eth_event_func(struct mlxsw_sx_port *mlxsw_sx_port,
      enum mlxsw_reg_pude_oper_status status)
{
 if (status == MLXSW_PORT_OPER_STATUS_UP) {
  netdev_info(mlxsw_sx_port->dev, "link up\n");
  netif_carrier_on(mlxsw_sx_port->dev);
 } else {
  netdev_info(mlxsw_sx_port->dev, "link down\n");
  netif_carrier_off(mlxsw_sx_port->dev);
 }
}
