
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sib_port {int local_port; struct mlxsw_sib* mlxsw_sib; } ;
struct mlxsw_sib {int core; } ;


 int MLXSW_PORT_ADMIN_STATUS_DOWN ;
 int MLXSW_PORT_ADMIN_STATUS_UP ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PAOS_LEN ;
 int mlxsw_reg_paos_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int paos ;

__attribute__((used)) static int
mlxsw_sib_port_admin_status_set(struct mlxsw_sib_port *mlxsw_sib_port,
    bool is_up)
{
 struct mlxsw_sib *mlxsw_sib = mlxsw_sib_port->mlxsw_sib;
 char paos_pl[MLXSW_REG_PAOS_LEN];

 mlxsw_reg_paos_pack(paos_pl, mlxsw_sib_port->local_port,
       is_up ? MLXSW_PORT_ADMIN_STATUS_UP :
       MLXSW_PORT_ADMIN_STATUS_DOWN);
 return mlxsw_reg_write(mlxsw_sib->core, MLXSW_REG(paos), paos_pl);
}
