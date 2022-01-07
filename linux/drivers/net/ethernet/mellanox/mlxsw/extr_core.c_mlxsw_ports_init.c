
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core_port {int dummy; } ;
struct mlxsw_core {int ports; scalar_t__ max_ports; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_SYSTEM_PORT ;
 scalar_t__ MLXSW_CORE_RES_GET (struct mlxsw_core*,int ) ;
 scalar_t__ MLXSW_CORE_RES_VALID (struct mlxsw_core*,int ) ;
 scalar_t__ MLXSW_PORT_MAX_PORTS_DEFAULT ;
 int kcalloc (scalar_t__,int,int ) ;

__attribute__((used)) static int mlxsw_ports_init(struct mlxsw_core *mlxsw_core)
{

 if (MLXSW_CORE_RES_VALID(mlxsw_core, MAX_SYSTEM_PORT))
  mlxsw_core->max_ports = MLXSW_CORE_RES_GET(mlxsw_core,
          MAX_SYSTEM_PORT) + 1;
 else
  mlxsw_core->max_ports = MLXSW_PORT_MAX_PORTS_DEFAULT + 1;

 mlxsw_core->ports = kcalloc(mlxsw_core->max_ports,
        sizeof(struct mlxsw_core_port), GFP_KERNEL);
 if (!mlxsw_core->ports)
  return -ENOMEM;

 return 0;
}
