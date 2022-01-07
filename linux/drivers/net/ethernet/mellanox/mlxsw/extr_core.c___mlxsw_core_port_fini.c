
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct devlink_port {int dummy; } ;
struct mlxsw_core_port {struct devlink_port devlink_port; } ;
struct mlxsw_core {struct mlxsw_core_port* ports; } ;


 int devlink_port_unregister (struct devlink_port*) ;
 int memset (struct mlxsw_core_port*,int ,int) ;

__attribute__((used)) static void __mlxsw_core_port_fini(struct mlxsw_core *mlxsw_core, u8 local_port)
{
 struct mlxsw_core_port *mlxsw_core_port =
     &mlxsw_core->ports[local_port];
 struct devlink_port *devlink_port = &mlxsw_core_port->devlink_port;

 devlink_port_unregister(devlink_port);
 memset(mlxsw_core_port, 0, sizeof(*mlxsw_core_port));
}
