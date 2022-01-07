
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_port {int dummy; } ;


 int VLAN_N_VID ;
 int mlxsw_sp_port_stp_set (struct mlxsw_sp_port*,int) ;
 int mlxsw_sp_port_vid_learning_set (struct mlxsw_sp_port*,int,int) ;
 int mlxsw_sp_port_vlan_set (struct mlxsw_sp_port*,int,int,int,int) ;
 int mlxsw_sp_port_vp_mode_set (struct mlxsw_sp_port*,int) ;

__attribute__((used)) static int mlxsw_sp_port_ovs_join(struct mlxsw_sp_port *mlxsw_sp_port)
{
 u16 vid = 1;
 int err;

 err = mlxsw_sp_port_vp_mode_set(mlxsw_sp_port, 1);
 if (err)
  return err;
 err = mlxsw_sp_port_stp_set(mlxsw_sp_port, 1);
 if (err)
  goto err_port_stp_set;
 err = mlxsw_sp_port_vlan_set(mlxsw_sp_port, 1, VLAN_N_VID - 2,
         1, 0);
 if (err)
  goto err_port_vlan_set;

 for (; vid <= VLAN_N_VID - 1; vid++) {
  err = mlxsw_sp_port_vid_learning_set(mlxsw_sp_port,
           vid, 0);
  if (err)
   goto err_vid_learning_set;
 }

 return 0;

err_vid_learning_set:
 for (vid--; vid >= 1; vid--)
  mlxsw_sp_port_vid_learning_set(mlxsw_sp_port, vid, 1);
err_port_vlan_set:
 mlxsw_sp_port_stp_set(mlxsw_sp_port, 0);
err_port_stp_set:
 mlxsw_sp_port_vp_mode_set(mlxsw_sp_port, 0);
 return err;
}
