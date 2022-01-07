
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dummy; } ;


 int mlxsw_sp_port_headroom_init (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_sb_cms_init (struct mlxsw_sp_port*) ;
 int mlxsw_sp_port_sb_pms_init (struct mlxsw_sp_port*) ;

int mlxsw_sp_port_buffers_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 int err;

 err = mlxsw_sp_port_headroom_init(mlxsw_sp_port);
 if (err)
  return err;
 err = mlxsw_sp_port_sb_cms_init(mlxsw_sp_port);
 if (err)
  return err;
 err = mlxsw_sp_port_sb_pms_init(mlxsw_sp_port);

 return err;
}
