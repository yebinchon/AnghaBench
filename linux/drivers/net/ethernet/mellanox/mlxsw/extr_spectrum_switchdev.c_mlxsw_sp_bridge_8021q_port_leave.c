
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dummy; } ;
struct mlxsw_sp_bridge_port {int dummy; } ;
struct mlxsw_sp_bridge_device {int dummy; } ;


 int MLXSW_SP_DEFAULT_VID ;
 int mlxsw_sp_port_pvid_set (struct mlxsw_sp_port*,int ) ;

__attribute__((used)) static void
mlxsw_sp_bridge_8021q_port_leave(struct mlxsw_sp_bridge_device *bridge_device,
     struct mlxsw_sp_bridge_port *bridge_port,
     struct mlxsw_sp_port *mlxsw_sp_port)
{

 mlxsw_sp_port_pvid_set(mlxsw_sp_port, MLXSW_SP_DEFAULT_VID);
}
