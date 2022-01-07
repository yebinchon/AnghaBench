
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sib {struct mlxsw_bus_info const* bus_info; struct mlxsw_core* core; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_bus_info {int dev; } ;


 int dev_err (int ,char*) ;
 struct mlxsw_sib* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_sib_hw_id_get (struct mlxsw_sib*) ;
 int mlxsw_sib_ports_create (struct mlxsw_sib*) ;
 int mlxsw_sib_ports_remove (struct mlxsw_sib*) ;
 int mlxsw_sib_taps_init (struct mlxsw_sib*) ;

__attribute__((used)) static int mlxsw_sib_init(struct mlxsw_core *mlxsw_core,
     const struct mlxsw_bus_info *mlxsw_bus_info)
{
 struct mlxsw_sib *mlxsw_sib = mlxsw_core_driver_priv(mlxsw_core);
 int err;

 mlxsw_sib->core = mlxsw_core;
 mlxsw_sib->bus_info = mlxsw_bus_info;

 err = mlxsw_sib_hw_id_get(mlxsw_sib);
 if (err) {
  dev_err(mlxsw_sib->bus_info->dev, "Failed to get switch HW ID\n");
  return err;
 }

 err = mlxsw_sib_ports_create(mlxsw_sib);
 if (err) {
  dev_err(mlxsw_sib->bus_info->dev, "Failed to create ports\n");
  return err;
 }

 err = mlxsw_sib_taps_init(mlxsw_sib);
 if (err) {
  dev_err(mlxsw_sib->bus_info->dev, "Failed to set traps\n");
  goto err_traps_init_err;
 }

 return 0;

err_traps_init_err:
 mlxsw_sib_ports_remove(mlxsw_sib);
 return err;
}
