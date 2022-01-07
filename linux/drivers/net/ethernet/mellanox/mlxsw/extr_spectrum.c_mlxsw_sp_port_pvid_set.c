
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlxsw_sp_port {scalar_t__ pvid; } ;


 int __mlxsw_sp_port_pvid_set (struct mlxsw_sp_port*,scalar_t__) ;
 int mlxsw_sp_port_allow_untagged_set (struct mlxsw_sp_port*,int) ;

int mlxsw_sp_port_pvid_set(struct mlxsw_sp_port *mlxsw_sp_port, u16 vid)
{
 int err;

 if (!vid) {
  err = mlxsw_sp_port_allow_untagged_set(mlxsw_sp_port, 0);
  if (err)
   return err;
 } else {
  err = __mlxsw_sp_port_pvid_set(mlxsw_sp_port, vid);
  if (err)
   return err;
  err = mlxsw_sp_port_allow_untagged_set(mlxsw_sp_port, 1);
  if (err)
   goto err_port_allow_untagged_set;
 }

 mlxsw_sp_port->pvid = vid;
 return 0;

err_port_allow_untagged_set:
 __mlxsw_sp_port_pvid_set(mlxsw_sp_port, mlxsw_sp_port->pvid);
 return err;
}
