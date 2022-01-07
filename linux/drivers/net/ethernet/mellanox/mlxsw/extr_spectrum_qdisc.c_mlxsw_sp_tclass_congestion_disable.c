
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_CWTPM_LEN ;
 int MLXSW_REG_CWTPM_RESET_PROFILE ;
 int cwtpm ;
 int mlxsw_reg_cwtpm_pack (char*,int ,int,int ,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;

__attribute__((used)) static int
mlxsw_sp_tclass_congestion_disable(struct mlxsw_sp_port *mlxsw_sp_port,
       int tclass_num)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char cwtpm_cmd[MLXSW_REG_CWTPM_LEN];

 mlxsw_reg_cwtpm_pack(cwtpm_cmd, mlxsw_sp_port->local_port, tclass_num,
        MLXSW_REG_CWTPM_RESET_PROFILE, 0, 0);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(cwtpm), cwtpm_cmd);
}
