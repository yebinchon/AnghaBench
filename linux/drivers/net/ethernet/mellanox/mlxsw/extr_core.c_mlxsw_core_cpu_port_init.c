
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core_port {void* port_driver_priv; } ;
struct mlxsw_core {struct mlxsw_core_port* ports; } ;


 int DEVLINK_PORT_FLAVOUR_CPU ;
 size_t MLXSW_PORT_CPU_PORT ;
 int __mlxsw_core_port_init (struct mlxsw_core*,size_t,int ,int ,int,int ,unsigned char const*,unsigned char) ;

int mlxsw_core_cpu_port_init(struct mlxsw_core *mlxsw_core,
        void *port_driver_priv,
        const unsigned char *switch_id,
        unsigned char switch_id_len)
{
 struct mlxsw_core_port *mlxsw_core_port =
    &mlxsw_core->ports[MLXSW_PORT_CPU_PORT];
 int err;

 err = __mlxsw_core_port_init(mlxsw_core, MLXSW_PORT_CPU_PORT,
         DEVLINK_PORT_FLAVOUR_CPU,
         0, 0, 0,
         switch_id, switch_id_len);
 if (err)
  return err;

 mlxsw_core_port->port_driver_priv = port_driver_priv;
 return 0;
}
