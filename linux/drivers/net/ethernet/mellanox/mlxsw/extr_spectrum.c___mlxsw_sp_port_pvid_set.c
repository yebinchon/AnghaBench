
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SPVID_LEN ;
 int mlxsw_reg_spvid_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int spvid ;

__attribute__((used)) static int __mlxsw_sp_port_pvid_set(struct mlxsw_sp_port *mlxsw_sp_port,
        u16 vid)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char spvid_pl[MLXSW_REG_SPVID_LEN];

 mlxsw_reg_spvid_pack(spvid_pl, mlxsw_sp_port->local_port, vid);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(spvid), spvid_pl);
}
