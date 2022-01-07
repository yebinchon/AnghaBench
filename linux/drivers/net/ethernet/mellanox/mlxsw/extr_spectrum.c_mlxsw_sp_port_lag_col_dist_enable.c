
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int lag_id; } ;


 int mlxsw_sp_lag_col_port_disable (struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_lag_col_port_enable (struct mlxsw_sp_port*,int ) ;
 int mlxsw_sp_lag_dist_port_add (struct mlxsw_sp_port*,int ) ;

__attribute__((used)) static int
mlxsw_sp_port_lag_col_dist_enable(struct mlxsw_sp_port *mlxsw_sp_port)
{
 int err;

 err = mlxsw_sp_lag_col_port_enable(mlxsw_sp_port,
        mlxsw_sp_port->lag_id);
 if (err)
  return err;

 err = mlxsw_sp_lag_dist_port_add(mlxsw_sp_port, mlxsw_sp_port->lag_id);
 if (err)
  goto err_dist_port_add;

 return 0;

err_dist_port_add:
 mlxsw_sp_lag_col_port_disable(mlxsw_sp_port, mlxsw_sp_port->lag_id);
 return err;
}
