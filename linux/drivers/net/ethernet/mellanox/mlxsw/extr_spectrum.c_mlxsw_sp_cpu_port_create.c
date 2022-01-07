
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {size_t local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {struct mlxsw_sp_port** ports; TYPE_1__* bus_info; int base_mac; int core; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t MLXSW_PORT_CPU_PORT ;
 int dev_err (int ,char*) ;
 int kfree (struct mlxsw_sp_port*) ;
 struct mlxsw_sp_port* kzalloc (int,int ) ;
 int mlxsw_core_cpu_port_init (int ,struct mlxsw_sp_port*,int ,int) ;

__attribute__((used)) static int mlxsw_sp_cpu_port_create(struct mlxsw_sp *mlxsw_sp)
{
 struct mlxsw_sp_port *mlxsw_sp_port;
 int err;

 mlxsw_sp_port = kzalloc(sizeof(*mlxsw_sp_port), GFP_KERNEL);
 if (!mlxsw_sp_port)
  return -ENOMEM;

 mlxsw_sp_port->mlxsw_sp = mlxsw_sp;
 mlxsw_sp_port->local_port = MLXSW_PORT_CPU_PORT;

 err = mlxsw_core_cpu_port_init(mlxsw_sp->core,
           mlxsw_sp_port,
           mlxsw_sp->base_mac,
           sizeof(mlxsw_sp->base_mac));
 if (err) {
  dev_err(mlxsw_sp->bus_info->dev, "Failed to initialize core CPU port\n");
  goto err_core_cpu_port_init;
 }

 mlxsw_sp->ports[MLXSW_PORT_CPU_PORT] = mlxsw_sp_port;
 return 0;

err_core_cpu_port_init:
 kfree(mlxsw_sp_port);
 return err;
}
