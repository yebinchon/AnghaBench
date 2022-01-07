
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_QRWE_LEN ;
 int mlxsw_reg_qrwe_pack (char*,int ,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int qrwe ;

__attribute__((used)) static int
mlxsw_sp_port_dcb_app_update_qrwe(struct mlxsw_sp_port *mlxsw_sp_port,
      bool rewrite_dscp)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char qrwe_pl[MLXSW_REG_QRWE_LEN];

 mlxsw_reg_qrwe_pack(qrwe_pl, mlxsw_sp_port->local_port,
       0, rewrite_dscp);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(qrwe), qrwe_pl);
}
