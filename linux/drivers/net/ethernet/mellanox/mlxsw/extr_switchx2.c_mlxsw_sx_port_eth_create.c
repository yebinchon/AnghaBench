
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mlxsw_sx {int core; TYPE_1__* bus_info; int hw_id; } ;
struct TYPE_2__ {int dev; } ;


 int __mlxsw_sx_port_eth_create (struct mlxsw_sx*,scalar_t__,scalar_t__,scalar_t__) ;
 int dev_err (int ,char*,scalar_t__) ;
 int mlxsw_core_port_fini (int ,scalar_t__) ;
 int mlxsw_core_port_init (int ,scalar_t__,scalar_t__,int,int ,int ,int) ;

__attribute__((used)) static int mlxsw_sx_port_eth_create(struct mlxsw_sx *mlxsw_sx, u8 local_port,
        u8 module, u8 width)
{
 int err;

 err = mlxsw_core_port_init(mlxsw_sx->core, local_port,
       module + 1, 0, 0,
       mlxsw_sx->hw_id, sizeof(mlxsw_sx->hw_id));
 if (err) {
  dev_err(mlxsw_sx->bus_info->dev, "Port %d: Failed to init core port\n",
   local_port);
  return err;
 }
 err = __mlxsw_sx_port_eth_create(mlxsw_sx, local_port, module, width);
 if (err)
  goto err_port_create;

 return 0;

err_port_create:
 mlxsw_core_port_fini(mlxsw_sx->core, local_port);
 return err;
}
