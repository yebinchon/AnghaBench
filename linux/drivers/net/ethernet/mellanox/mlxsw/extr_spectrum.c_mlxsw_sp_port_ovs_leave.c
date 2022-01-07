
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

__attribute__((used)) static void mlxsw_sp_port_ovs_leave(struct mlxsw_sp_port *mlxsw_sp_port)
{
 u16 vid;

 for (vid = VLAN_N_VID - 1; vid >= 1; vid--)
  mlxsw_sp_port_vid_learning_set(mlxsw_sp_port,
            vid, 1);

 mlxsw_sp_port_vlan_set(mlxsw_sp_port, 1, VLAN_N_VID - 2,
          0, 0);
 mlxsw_sp_port_stp_set(mlxsw_sp_port, 0);
 mlxsw_sp_port_vp_mode_set(mlxsw_sp_port, 0);
}
