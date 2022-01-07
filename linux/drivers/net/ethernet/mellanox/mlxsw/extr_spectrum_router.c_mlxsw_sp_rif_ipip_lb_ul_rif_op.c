
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {int vr_id; int rif_index; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int IP_MAX_MTU ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_RITR_LEN ;
 int MLXSW_REG_RITR_LOOPBACK_GENERIC ;
 int MLXSW_REG_RITR_LOOPBACK_IF ;
 int mlxsw_reg_ritr_loopback_protocol_set (char*,int ) ;
 int mlxsw_reg_ritr_pack (char*,int,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ritr ;

__attribute__((used)) static int
mlxsw_sp_rif_ipip_lb_ul_rif_op(struct mlxsw_sp_rif *ul_rif, bool enable)
{
 struct mlxsw_sp *mlxsw_sp = ul_rif->mlxsw_sp;
 char ritr_pl[MLXSW_REG_RITR_LEN];

 mlxsw_reg_ritr_pack(ritr_pl, enable, MLXSW_REG_RITR_LOOPBACK_IF,
       ul_rif->rif_index, ul_rif->vr_id, IP_MAX_MTU);
 mlxsw_reg_ritr_loopback_protocol_set(ritr_pl,
          MLXSW_REG_RITR_LOOPBACK_GENERIC);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
}
