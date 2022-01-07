
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_rif_subport {int vid; int system_port; int lag_id; scalar_t__ lag; } ;
struct mlxsw_sp_rif {TYPE_1__* dev; int vr_id; int rif_index; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_2__ {int dev_addr; int mtu; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RITR_LEN ;
 int MLXSW_REG_RITR_SP_IF ;
 int mlxsw_reg_ritr_mac_pack (char*,int ) ;
 int mlxsw_reg_ritr_pack (char*,int,int ,int ,int ,int ) ;
 int mlxsw_reg_ritr_sp_if_pack (char*,scalar_t__,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 struct mlxsw_sp_rif_subport* mlxsw_sp_rif_subport_rif (struct mlxsw_sp_rif*) ;
 int ritr ;

__attribute__((used)) static int mlxsw_sp_rif_subport_op(struct mlxsw_sp_rif *rif, bool enable)
{
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 struct mlxsw_sp_rif_subport *rif_subport;
 char ritr_pl[MLXSW_REG_RITR_LEN];

 rif_subport = mlxsw_sp_rif_subport_rif(rif);
 mlxsw_reg_ritr_pack(ritr_pl, enable, MLXSW_REG_RITR_SP_IF,
       rif->rif_index, rif->vr_id, rif->dev->mtu);
 mlxsw_reg_ritr_mac_pack(ritr_pl, rif->dev->dev_addr);
 mlxsw_reg_ritr_sp_if_pack(ritr_pl, rif_subport->lag,
      rif_subport->lag ? rif_subport->lag_id :
           rif_subport->system_port,
      rif_subport->vid);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
}
