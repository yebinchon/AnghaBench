
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PPAD_LEN ;
 int mlxsw_reg_ppad_mac_memcpy_to (char*,unsigned char*) ;
 int mlxsw_reg_ppad_pack (char*,int,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ppad ;

__attribute__((used)) static int mlxsw_sp_port_dev_addr_set(struct mlxsw_sp_port *mlxsw_sp_port,
          unsigned char *addr)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char ppad_pl[MLXSW_REG_PPAD_LEN];

 mlxsw_reg_ppad_pack(ppad_pl, 1, mlxsw_sp_port->local_port);
 mlxsw_reg_ppad_mac_memcpy_to(ppad_pl, addr);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ppad), ppad_pl);
}
