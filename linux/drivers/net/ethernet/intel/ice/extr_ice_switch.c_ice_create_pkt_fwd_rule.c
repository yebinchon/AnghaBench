
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ice_sw_recipe {int filt_rules; } ;
struct ice_hw {TYPE_3__* switch_info; } ;
struct TYPE_8__ {int lkup_type; void* fltr_rule_id; } ;
struct TYPE_5__ {int index; } ;
struct TYPE_6__ {TYPE_1__ lkup_tx_rx; } ;
struct ice_fltr_mgmt_list_entry {int vsi_count; int list_entry; TYPE_4__ fltr_info; TYPE_2__ pdata; int counter_index; int sw_marker_id; int lg_act_idx; } ;
struct ice_fltr_list_entry {TYPE_4__ fltr_info; } ;
struct ice_aqc_sw_rules_elem {int vsi_count; int list_entry; TYPE_4__ fltr_info; TYPE_2__ pdata; int counter_index; int sw_marker_id; int lg_act_idx; } ;
typedef enum ice_sw_lkup_type { ____Placeholder_ice_sw_lkup_type } ice_sw_lkup_type ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_7__ {struct ice_sw_recipe* recp_list; } ;


 int GFP_KERNEL ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_INVAL_COUNTER_ID ;
 int ICE_INVAL_LG_ACT_INDEX ;
 int ICE_INVAL_SW_MARKER_ID ;
 int ICE_SW_RULE_RX_TX_ETH_HDR_SIZE ;
 int devm_kfree (int ,struct ice_fltr_mgmt_list_entry*) ;
 struct ice_fltr_mgmt_list_entry* devm_kzalloc (int ,int,int ) ;
 int ice_aq_sw_rules (struct ice_hw*,struct ice_fltr_mgmt_list_entry*,int,int,int ,int *) ;
 int ice_aqc_opc_add_sw_rules ;
 int ice_fill_sw_rule (struct ice_hw*,TYPE_4__*,struct ice_fltr_mgmt_list_entry*,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 void* le16_to_cpu (int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static enum ice_status
ice_create_pkt_fwd_rule(struct ice_hw *hw,
   struct ice_fltr_list_entry *f_entry)
{
 struct ice_fltr_mgmt_list_entry *fm_entry;
 struct ice_aqc_sw_rules_elem *s_rule;
 enum ice_sw_lkup_type l_type;
 struct ice_sw_recipe *recp;
 enum ice_status status;

 s_rule = devm_kzalloc(ice_hw_to_dev(hw),
         ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, GFP_KERNEL);
 if (!s_rule)
  return ICE_ERR_NO_MEMORY;
 fm_entry = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*fm_entry),
    GFP_KERNEL);
 if (!fm_entry) {
  status = ICE_ERR_NO_MEMORY;
  goto ice_create_pkt_fwd_rule_exit;
 }

 fm_entry->fltr_info = f_entry->fltr_info;


 fm_entry->vsi_count = 1;
 fm_entry->lg_act_idx = ICE_INVAL_LG_ACT_INDEX;
 fm_entry->sw_marker_id = ICE_INVAL_SW_MARKER_ID;
 fm_entry->counter_index = ICE_INVAL_COUNTER_ID;

 ice_fill_sw_rule(hw, &fm_entry->fltr_info, s_rule,
    ice_aqc_opc_add_sw_rules);

 status = ice_aq_sw_rules(hw, s_rule, ICE_SW_RULE_RX_TX_ETH_HDR_SIZE, 1,
     ice_aqc_opc_add_sw_rules, ((void*)0));
 if (status) {
  devm_kfree(ice_hw_to_dev(hw), fm_entry);
  goto ice_create_pkt_fwd_rule_exit;
 }

 f_entry->fltr_info.fltr_rule_id =
  le16_to_cpu(s_rule->pdata.lkup_tx_rx.index);
 fm_entry->fltr_info.fltr_rule_id =
  le16_to_cpu(s_rule->pdata.lkup_tx_rx.index);




 l_type = fm_entry->fltr_info.lkup_type;
 recp = &hw->switch_info->recp_list[l_type];
 list_add(&fm_entry->list_entry, &recp->filt_rules);

ice_create_pkt_fwd_rule_exit:
 devm_kfree(ice_hw_to_dev(hw), s_rule);
 return status;
}
