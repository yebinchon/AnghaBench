
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {size_t module; } ;
struct mlxsw_sib_port {size_t local_port; TYPE_1__ mapping; struct mlxsw_sib* mlxsw_sib; } ;
struct mlxsw_sib {struct mlxsw_sib_port** ports; int core; TYPE_2__* bus_info; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ BIT (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_IB_DEFAULT_MTU ;
 int MLXSW_PORT_SWID_DISABLED_PORT ;
 scalar_t__ MLXSW_REG_PTYS_IB_SPEED_EDR ;
 int dev_err (int ,char*,size_t) ;
 int kfree (struct mlxsw_sib_port*) ;
 struct mlxsw_sib_port* kzalloc (int,int ) ;
 int mlxsw_core_port_ib_set (int ,size_t,struct mlxsw_sib_port*) ;
 int mlxsw_sib_port_admin_status_set (struct mlxsw_sib_port*,int) ;
 int mlxsw_sib_port_mtu_set (struct mlxsw_sib_port*,int ) ;
 int mlxsw_sib_port_set (struct mlxsw_sib_port*,size_t) ;
 int mlxsw_sib_port_speed_set (struct mlxsw_sib_port*,scalar_t__,scalar_t__) ;
 int mlxsw_sib_port_swid_set (struct mlxsw_sib_port*,int ) ;

__attribute__((used)) static int __mlxsw_sib_port_create(struct mlxsw_sib *mlxsw_sib, u8 local_port,
       u8 module, u8 width)
{
 struct mlxsw_sib_port *mlxsw_sib_port;
 int err;

 mlxsw_sib_port = kzalloc(sizeof(*mlxsw_sib_port), GFP_KERNEL);
 if (!mlxsw_sib_port)
  return -ENOMEM;
 mlxsw_sib_port->mlxsw_sib = mlxsw_sib;
 mlxsw_sib_port->local_port = local_port;
 mlxsw_sib_port->mapping.module = module;

 err = mlxsw_sib_port_swid_set(mlxsw_sib_port, 0);
 if (err) {
  dev_err(mlxsw_sib->bus_info->dev, "Port %d: Failed to set SWID\n",
   mlxsw_sib_port->local_port);
  goto err_port_swid_set;
 }


 err = mlxsw_sib_port_set(mlxsw_sib_port, module + 1);
 if (err) {
  dev_err(mlxsw_sib->bus_info->dev, "Port %d: Failed to set IB port\n",
   mlxsw_sib_port->local_port);
  goto err_port_ib_set;
 }




 err = mlxsw_sib_port_speed_set(mlxsw_sib_port,
           MLXSW_REG_PTYS_IB_SPEED_EDR - 1,
           BIT(3) - 1);
 if (err) {
  dev_err(mlxsw_sib->bus_info->dev, "Port %d: Failed to set speed\n",
   mlxsw_sib_port->local_port);
  goto err_port_speed_set;
 }




 err = mlxsw_sib_port_mtu_set(mlxsw_sib_port, MLXSW_IB_DEFAULT_MTU);
 if (err) {
  dev_err(mlxsw_sib->bus_info->dev, "Port %d: Failed to set MTU\n",
   mlxsw_sib_port->local_port);
  goto err_port_mtu_set;
 }

 err = mlxsw_sib_port_admin_status_set(mlxsw_sib_port, 1);
 if (err) {
  dev_err(mlxsw_sib->bus_info->dev, "Port %d: Failed to change admin state to UP\n",
   mlxsw_sib_port->local_port);
  goto err_port_admin_set;
 }

 mlxsw_core_port_ib_set(mlxsw_sib->core, mlxsw_sib_port->local_port,
          mlxsw_sib_port);
 mlxsw_sib->ports[local_port] = mlxsw_sib_port;
 return 0;

err_port_admin_set:
err_port_mtu_set:
err_port_speed_set:
err_port_ib_set:
 mlxsw_sib_port_swid_set(mlxsw_sib_port, MLXSW_PORT_SWID_DISABLED_PORT);
err_port_swid_set:
 kfree(mlxsw_sib_port);
 return err;
}
