
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {TYPE_1__* mlxsw_sp; int local_port; } ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; } ;
struct TYPE_2__ {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PFCC_LEN ;
 int mlxsw_reg_pfcc_pack (char*,int ) ;
 int mlxsw_reg_pfcc_pprx_set (char*,int ) ;
 int mlxsw_reg_pfcc_pptx_set (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pfcc ;

__attribute__((used)) static int mlxsw_sp_port_pause_set(struct mlxsw_sp_port *mlxsw_sp_port,
       struct ethtool_pauseparam *pause)
{
 char pfcc_pl[MLXSW_REG_PFCC_LEN];

 mlxsw_reg_pfcc_pack(pfcc_pl, mlxsw_sp_port->local_port);
 mlxsw_reg_pfcc_pprx_set(pfcc_pl, pause->rx_pause);
 mlxsw_reg_pfcc_pptx_set(pfcc_pl, pause->tx_pause);

 return mlxsw_reg_write(mlxsw_sp_port->mlxsw_sp->core, MLXSW_REG(pfcc),
          pfcc_pl);
}
