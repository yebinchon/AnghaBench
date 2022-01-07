
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int addr4; } ;
struct mlxsw_sp_rif_ipip_lb_config {int ul_protocol; int okey; int lb_ipipt; TYPE_1__ saddr; } ;
struct mlxsw_sp_rif {TYPE_2__* dev; int vr_id; int rif_index; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_rif_ipip_lb {struct mlxsw_sp_rif common; struct mlxsw_sp_rif_ipip_lb_config lb_config; } ;
struct mlxsw_sp {int core; } ;
struct TYPE_4__ {int mtu; } ;


 int EAFNOSUPPORT ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_RITR_LEN ;
 int MLXSW_REG_RITR_LOOPBACK_IF ;
 int MLXSW_REG_RITR_LOOPBACK_IPIP_OPTIONS_GRE_KEY_PRESET ;


 int be32_to_cpu (int ) ;
 int mlxsw_reg_ritr_loopback_ipip4_pack (char*,int ,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_ritr_pack (char*,int,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ritr ;

__attribute__((used)) static int
mlxsw_sp_rif_ipip_lb_op(struct mlxsw_sp_rif_ipip_lb *lb_rif, u16 ul_vr_id,
   u16 ul_rif_id, bool enable)
{
 struct mlxsw_sp_rif_ipip_lb_config lb_cf = lb_rif->lb_config;
 struct mlxsw_sp_rif *rif = &lb_rif->common;
 struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
 char ritr_pl[MLXSW_REG_RITR_LEN];
 u32 saddr4;

 switch (lb_cf.ul_protocol) {
 case 129:
  saddr4 = be32_to_cpu(lb_cf.saddr.addr4);
  mlxsw_reg_ritr_pack(ritr_pl, enable, MLXSW_REG_RITR_LOOPBACK_IF,
        rif->rif_index, rif->vr_id, rif->dev->mtu);
  mlxsw_reg_ritr_loopback_ipip4_pack(ritr_pl, lb_cf.lb_ipipt,
       MLXSW_REG_RITR_LOOPBACK_IPIP_OPTIONS_GRE_KEY_PRESET,
       ul_vr_id, ul_rif_id, saddr4, lb_cf.okey);
  break;

 case 128:
  return -EAFNOSUPPORT;
 }

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
}
