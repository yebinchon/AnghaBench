
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_m {struct mlxsw_bus_info const* bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int dev; } ;


 int dev_err (int ,char*) ;
 struct mlxsw_m* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_m_base_mac_get (struct mlxsw_m*) ;
 int mlxsw_m_ports_create (struct mlxsw_m*) ;

__attribute__((used)) static int mlxsw_m_init(struct mlxsw_core *mlxsw_core,
   const struct mlxsw_bus_info *mlxsw_bus_info)
{
 struct mlxsw_m *mlxsw_m = mlxsw_core_driver_priv(mlxsw_core);
 int err;

 mlxsw_m->core = mlxsw_core;
 mlxsw_m->bus_info = mlxsw_bus_info;

 err = mlxsw_m_base_mac_get(mlxsw_m);
 if (err) {
  dev_err(mlxsw_m->bus_info->dev, "Failed to get base mac\n");
  return err;
 }

 err = mlxsw_m_ports_create(mlxsw_m);
 if (err) {
  dev_err(mlxsw_m->bus_info->dev, "Failed to create ports\n");
  return err;
 }

 return 0;
}
