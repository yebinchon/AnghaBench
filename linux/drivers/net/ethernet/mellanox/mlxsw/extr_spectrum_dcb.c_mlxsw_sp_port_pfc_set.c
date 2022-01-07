
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_pause; int rx_pause; } ;
struct mlxsw_sp_port {TYPE_2__* mlxsw_sp; TYPE_1__ link; int local_port; } ;
struct ieee_pfc {int pfc_en; } ;
struct TYPE_4__ {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PFCC_LEN ;
 int mlxsw_reg_pfcc_pack (char*,int ) ;
 int mlxsw_reg_pfcc_pprx_set (char*,int ) ;
 int mlxsw_reg_pfcc_pptx_set (char*,int ) ;
 int mlxsw_reg_pfcc_prio_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int pfcc ;

__attribute__((used)) static int mlxsw_sp_port_pfc_set(struct mlxsw_sp_port *mlxsw_sp_port,
     struct ieee_pfc *pfc)
{
 char pfcc_pl[MLXSW_REG_PFCC_LEN];

 mlxsw_reg_pfcc_pack(pfcc_pl, mlxsw_sp_port->local_port);
 mlxsw_reg_pfcc_pprx_set(pfcc_pl, mlxsw_sp_port->link.rx_pause);
 mlxsw_reg_pfcc_pptx_set(pfcc_pl, mlxsw_sp_port->link.tx_pause);
 mlxsw_reg_pfcc_prio_pack(pfcc_pl, pfc->pfc_en);

 return mlxsw_reg_write(mlxsw_sp_port->mlxsw_sp->core, MLXSW_REG(pfcc),
          pfcc_pl);
}
