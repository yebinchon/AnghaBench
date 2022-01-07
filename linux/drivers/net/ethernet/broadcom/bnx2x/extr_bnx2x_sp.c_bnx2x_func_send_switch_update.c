
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct function_update_data {int tx_switch_suspend_change_flg; int sd_vlan_tag_change_flg; int sd_vlan_eth_type_change_flg; int sd_vlan_force_pri_change_flg; int sd_vlan_force_pri_flg; int update_tunn_cfg_flg; int inner_clss_l2gre; int inner_clss_vxlan; int inner_clss_l2geneve; int inner_rss; int echo; void* geneve_dst_port; void* vxlan_dst_port; void* sd_vlan_eth_type; void* sd_vlan_tag; scalar_t__ tx_switch_suspend; } ;
struct bnx2x_func_switch_update_params {int vlan_force_prio; int geneve_dst_port; int vxlan_dst_port; int changes; int vlan_eth_type; int vlan; } ;
struct TYPE_2__ {struct bnx2x_func_switch_update_params switch_update; } ;
struct bnx2x_func_state_params {TYPE_1__ params; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 int BNX2X_F_UPDATE_SD_VLAN_ETH_TYPE_CHNG ;
 int BNX2X_F_UPDATE_SD_VLAN_TAG_CHNG ;
 int BNX2X_F_UPDATE_TUNNEL_CFG_CHNG ;
 int BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_L2GENEVE ;
 int BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_L2GRE ;
 int BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_VXLAN ;
 int BNX2X_F_UPDATE_TUNNEL_INNER_RSS ;
 int BNX2X_F_UPDATE_TX_SWITCH_SUSPEND ;
 int BNX2X_F_UPDATE_TX_SWITCH_SUSPEND_CHNG ;
 int BNX2X_F_UPDATE_VLAN_FORCE_PRIO_CHNG ;
 int BNX2X_F_UPDATE_VLAN_FORCE_PRIO_FLAG ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE ;
 int SWITCH_UPDATE ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 void* cpu_to_le16 (int ) ;
 int memset (struct function_update_data*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int bnx2x_func_send_switch_update(struct bnx2x *bp,
     struct bnx2x_func_state_params *params)
{
 struct bnx2x_func_sp_obj *o = params->f_obj;
 struct function_update_data *rdata =
  (struct function_update_data *)o->rdata;
 dma_addr_t data_mapping = o->rdata_mapping;
 struct bnx2x_func_switch_update_params *switch_update_params =
  &params->params.switch_update;

 memset(rdata, 0, sizeof(*rdata));


 if (test_bit(BNX2X_F_UPDATE_TX_SWITCH_SUSPEND_CHNG,
       &switch_update_params->changes)) {
  rdata->tx_switch_suspend_change_flg = 1;
  rdata->tx_switch_suspend =
   test_bit(BNX2X_F_UPDATE_TX_SWITCH_SUSPEND,
     &switch_update_params->changes);
 }

 if (test_bit(BNX2X_F_UPDATE_SD_VLAN_TAG_CHNG,
       &switch_update_params->changes)) {
  rdata->sd_vlan_tag_change_flg = 1;
  rdata->sd_vlan_tag =
   cpu_to_le16(switch_update_params->vlan);
 }

 if (test_bit(BNX2X_F_UPDATE_SD_VLAN_ETH_TYPE_CHNG,
       &switch_update_params->changes)) {
  rdata->sd_vlan_eth_type_change_flg = 1;
  rdata->sd_vlan_eth_type =
   cpu_to_le16(switch_update_params->vlan_eth_type);
 }

 if (test_bit(BNX2X_F_UPDATE_VLAN_FORCE_PRIO_CHNG,
       &switch_update_params->changes)) {
  rdata->sd_vlan_force_pri_change_flg = 1;
  if (test_bit(BNX2X_F_UPDATE_VLAN_FORCE_PRIO_FLAG,
        &switch_update_params->changes))
   rdata->sd_vlan_force_pri_flg = 1;
  rdata->sd_vlan_force_pri_flg =
   switch_update_params->vlan_force_prio;
 }

 if (test_bit(BNX2X_F_UPDATE_TUNNEL_CFG_CHNG,
       &switch_update_params->changes)) {
  rdata->update_tunn_cfg_flg = 1;
  if (test_bit(BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_L2GRE,
        &switch_update_params->changes))
   rdata->inner_clss_l2gre = 1;
  if (test_bit(BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_VXLAN,
        &switch_update_params->changes))
   rdata->inner_clss_vxlan = 1;
  if (test_bit(BNX2X_F_UPDATE_TUNNEL_INNER_CLSS_L2GENEVE,
        &switch_update_params->changes))
   rdata->inner_clss_l2geneve = 1;
  if (test_bit(BNX2X_F_UPDATE_TUNNEL_INNER_RSS,
        &switch_update_params->changes))
   rdata->inner_rss = 1;
  rdata->vxlan_dst_port =
   cpu_to_le16(switch_update_params->vxlan_dst_port);
  rdata->geneve_dst_port =
   cpu_to_le16(switch_update_params->geneve_dst_port);
 }

 rdata->echo = SWITCH_UPDATE;







 return bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE, 0,
        U64_HI(data_mapping),
        U64_LO(data_mapping), NONE_CONNECTION_TYPE);
}
