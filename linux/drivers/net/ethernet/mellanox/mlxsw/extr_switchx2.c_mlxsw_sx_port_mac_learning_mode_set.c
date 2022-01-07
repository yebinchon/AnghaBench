
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sx_port {int local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int core; } ;
typedef enum mlxsw_reg_spmlr_learn_mode { ____Placeholder_mlxsw_reg_spmlr_learn_mode } mlxsw_reg_spmlr_learn_mode ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SPMLR_LEN ;
 int mlxsw_reg_spmlr_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int spmlr ;

__attribute__((used)) static int
mlxsw_sx_port_mac_learning_mode_set(struct mlxsw_sx_port *mlxsw_sx_port,
        enum mlxsw_reg_spmlr_learn_mode mode)
{
 struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
 char spmlr_pl[MLXSW_REG_SPMLR_LEN];

 mlxsw_reg_spmlr_pack(spmlr_pl, mlxsw_sx_port->local_port, mode);
 return mlxsw_reg_write(mlxsw_sx->core, MLXSW_REG(spmlr), spmlr_pl);
}
