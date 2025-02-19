
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sx_port {int dummy; } ;
struct mlxsw_sx {int ports; int core; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kzalloc (size_t,int ) ;
 unsigned int mlxsw_core_max_ports (int ) ;
 scalar_t__ mlxsw_sx_port_created (struct mlxsw_sx*,int) ;
 int mlxsw_sx_port_eth_create (struct mlxsw_sx*,int,int ,int ) ;
 int mlxsw_sx_port_module_info_get (struct mlxsw_sx*,int,int *,int *) ;
 int mlxsw_sx_port_remove (struct mlxsw_sx*,int) ;

__attribute__((used)) static int mlxsw_sx_ports_create(struct mlxsw_sx *mlxsw_sx)
{
 unsigned int max_ports = mlxsw_core_max_ports(mlxsw_sx->core);
 size_t alloc_size;
 u8 module, width;
 int i;
 int err;

 alloc_size = sizeof(struct mlxsw_sx_port *) * max_ports;
 mlxsw_sx->ports = kzalloc(alloc_size, GFP_KERNEL);
 if (!mlxsw_sx->ports)
  return -ENOMEM;

 for (i = 1; i < max_ports; i++) {
  err = mlxsw_sx_port_module_info_get(mlxsw_sx, i, &module,
          &width);
  if (err)
   goto err_port_module_info_get;
  if (!width)
   continue;
  err = mlxsw_sx_port_eth_create(mlxsw_sx, i, module, width);
  if (err)
   goto err_port_create;
 }
 return 0;

err_port_create:
err_port_module_info_get:
 for (i--; i >= 1; i--)
  if (mlxsw_sx_port_created(mlxsw_sx, i))
   mlxsw_sx_port_remove(mlxsw_sx, i);
 kfree(mlxsw_sx->ports);
 return err;
}
