
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_bridge_port {int lagged; int system_port; int lag_id; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFDF_LEN ;
 int mlxsw_reg_sfdf_fid_set (char*,int ) ;
 int mlxsw_reg_sfdf_pack (char*,int ) ;
 int mlxsw_reg_sfdf_port_fid_system_port_set (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_fdb_flush_type (int) ;
 int sfdf ;

__attribute__((used)) static int
mlxsw_sp_bridge_port_fdb_flush(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_bridge_port *bridge_port,
          u16 fid_index)
{
 bool lagged = bridge_port->lagged;
 char sfdf_pl[MLXSW_REG_SFDF_LEN];
 u16 system_port;

 system_port = lagged ? bridge_port->lag_id : bridge_port->system_port;
 mlxsw_reg_sfdf_pack(sfdf_pl, mlxsw_sp_fdb_flush_type(lagged));
 mlxsw_reg_sfdf_fid_set(sfdf_pl, fid_index);
 mlxsw_reg_sfdf_port_fid_system_port_set(sfdf_pl, system_port);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sfdf), sfdf_pl);
}
