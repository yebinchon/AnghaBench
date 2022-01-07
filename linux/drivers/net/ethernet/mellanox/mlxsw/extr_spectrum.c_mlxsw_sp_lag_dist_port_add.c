
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SLDR_LEN ;
 int mlxsw_reg_sldr_lag_add_port_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int sldr ;

__attribute__((used)) static int mlxsw_sp_lag_dist_port_add(struct mlxsw_sp_port *mlxsw_sp_port,
          u16 lag_id)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char sldr_pl[MLXSW_REG_SLDR_LEN];

 mlxsw_reg_sldr_lag_add_port_pack(sldr_pl, lag_id,
      mlxsw_sp_port->local_port);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sldr), sldr_pl);
}
