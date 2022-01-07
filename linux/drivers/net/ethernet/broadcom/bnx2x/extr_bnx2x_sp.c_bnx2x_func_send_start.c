
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int val; } ;
struct function_start_data {int sd_accept_mf_clss_fail_match_ethtype; int c2s_pri_default; TYPE_2__ c2s_pri_trans_table; scalar_t__ c2s_pri_tt_valid; int no_added_tags; void* sd_vlan_eth_type; int sd_vlan_force_pri_val; int sd_vlan_force_pri_flg; void* sd_accept_mf_clss_fail_ethtype; int sd_accept_mf_clss_fail; int inner_rss; int inner_clss_vxlan; int inner_clss_l2geneve; int inner_clss_l2gre; void* geneve_dst_port; void* vxlan_dst_port; int dmae_cmd_id; int network_cos_mode; int path_id; void* sd_vlan_tag; scalar_t__ function_mode; } ;
struct bnx2x_func_start_params {int sd_vlan_tag; int vxlan_dst_port; int geneve_dst_port; int class_fail_ethtype; int sd_vlan_eth_type; int c2s_pri_default; int c2s_pri; scalar_t__ c2s_pri_valid; int no_added_tags; int sd_vlan_force_pri_val; int sd_vlan_force_pri; int class_fail; int inner_rss; int inner_clss_vxlan; int inner_clss_l2geneve; int inner_clss_l2gre; int network_cos_mode; scalar_t__ mf_mode; } ;
struct TYPE_3__ {struct bnx2x_func_start_params start; } ;
struct bnx2x_func_state_params {TYPE_1__ params; struct bnx2x_func_sp_obj* f_obj; } ;
struct bnx2x_func_sp_obj {int rdata_mapping; scalar_t__ rdata; } ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 int BNX2X_FW_DMAE_C ;
 int BP_PATH (struct bnx2x*) ;
 int MAX_VLAN_PRIORITIES ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_FUNCTION_START ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct function_start_data*,int ,int) ;

__attribute__((used)) static inline int bnx2x_func_send_start(struct bnx2x *bp,
     struct bnx2x_func_state_params *params)
{
 struct bnx2x_func_sp_obj *o = params->f_obj;
 struct function_start_data *rdata =
  (struct function_start_data *)o->rdata;
 dma_addr_t data_mapping = o->rdata_mapping;
 struct bnx2x_func_start_params *start_params = &params->params.start;

 memset(rdata, 0, sizeof(*rdata));


 rdata->function_mode = (u8)start_params->mf_mode;
 rdata->sd_vlan_tag = cpu_to_le16(start_params->sd_vlan_tag);
 rdata->path_id = BP_PATH(bp);
 rdata->network_cos_mode = start_params->network_cos_mode;
 rdata->dmae_cmd_id = BNX2X_FW_DMAE_C;

 rdata->vxlan_dst_port = cpu_to_le16(start_params->vxlan_dst_port);
 rdata->geneve_dst_port = cpu_to_le16(start_params->geneve_dst_port);
 rdata->inner_clss_l2gre = start_params->inner_clss_l2gre;
 rdata->inner_clss_l2geneve = start_params->inner_clss_l2geneve;
 rdata->inner_clss_vxlan = start_params->inner_clss_vxlan;
 rdata->inner_rss = start_params->inner_rss;

 rdata->sd_accept_mf_clss_fail = start_params->class_fail;
 if (start_params->class_fail_ethtype) {
  rdata->sd_accept_mf_clss_fail_match_ethtype = 1;
  rdata->sd_accept_mf_clss_fail_ethtype =
   cpu_to_le16(start_params->class_fail_ethtype);
 }

 rdata->sd_vlan_force_pri_flg = start_params->sd_vlan_force_pri;
 rdata->sd_vlan_force_pri_val = start_params->sd_vlan_force_pri_val;
 if (start_params->sd_vlan_eth_type)
  rdata->sd_vlan_eth_type =
   cpu_to_le16(start_params->sd_vlan_eth_type);
 else
  rdata->sd_vlan_eth_type =
   cpu_to_le16(0x8100);

 rdata->no_added_tags = start_params->no_added_tags;

 rdata->c2s_pri_tt_valid = start_params->c2s_pri_valid;
 if (rdata->c2s_pri_tt_valid) {
  memcpy(rdata->c2s_pri_trans_table.val,
         start_params->c2s_pri,
         MAX_VLAN_PRIORITIES);
  rdata->c2s_pri_default = start_params->c2s_pri_default;
 }







 return bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_FUNCTION_START, 0,
        U64_HI(data_mapping),
        U64_LO(data_mapping), NONE_CONNECTION_TYPE);
}
