
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sx {int dummy; } ;
struct mlxsw_core {int dummy; } ;
typedef enum devlink_port_type { ____Placeholder_devlink_port_type } devlink_port_type ;


 int DEVLINK_PORT_TYPE_AUTO ;
 int DEVLINK_PORT_TYPE_ETH ;
 int DEVLINK_PORT_TYPE_IB ;
 int EOPNOTSUPP ;
 int __mlxsw_sx_port_eth_create (struct mlxsw_sx*,int ,int ,int ) ;
 int __mlxsw_sx_port_ib_create (struct mlxsw_sx*,int ,int ,int ) ;
 int __mlxsw_sx_port_remove (struct mlxsw_sx*,int ) ;
 struct mlxsw_sx* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_sx_port_module_info_get (struct mlxsw_sx*,int ,int *,int *) ;

__attribute__((used)) static int mlxsw_sx_port_type_set(struct mlxsw_core *mlxsw_core, u8 local_port,
      enum devlink_port_type new_type)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_core_driver_priv(mlxsw_core);
 u8 module, width;
 int err;

 if (new_type == DEVLINK_PORT_TYPE_AUTO)
  return -EOPNOTSUPP;

 __mlxsw_sx_port_remove(mlxsw_sx, local_port);
 err = mlxsw_sx_port_module_info_get(mlxsw_sx, local_port, &module,
         &width);
 if (err)
  goto err_port_module_info_get;

 if (new_type == DEVLINK_PORT_TYPE_ETH)
  err = __mlxsw_sx_port_eth_create(mlxsw_sx, local_port, module,
       width);
 else if (new_type == DEVLINK_PORT_TYPE_IB)
  err = __mlxsw_sx_port_ib_create(mlxsw_sx, local_port, module,
      width);

err_port_module_info_get:
 return err;
}
