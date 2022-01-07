
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dev; } ;


 int dev_put (int ) ;

void mlxsw_sp_port_dev_put(struct mlxsw_sp_port *mlxsw_sp_port)
{
 dev_put(mlxsw_sp_port->dev);
}
