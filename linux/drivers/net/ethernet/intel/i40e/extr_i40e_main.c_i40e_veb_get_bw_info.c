
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i40e_veb {int bw_limit; int* bw_tc_limit_credits; int* bw_tc_max_quanta; int * bw_tc_share_credits; int enabled_tc; int is_abs_credits; int bw_max_quanta; int seid; struct i40e_pf* pf; } ;
struct TYPE_4__ {int asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct i40e_pf {struct i40e_hw hw; TYPE_1__* pdev; } ;
struct i40e_aqc_query_switching_comp_ets_config_resp {int tc_valid_bits; int tc_bw_max; int port_bw_limit; } ;
struct i40e_aqc_query_switching_comp_bw_config_resp {int * tc_bw_limits; int * tc_bw_share_credits; int * tc_bw_max; int absolute_credits_enable; } ;
struct TYPE_3__ {int dev; } ;


 int I40E_MAX_TRAFFIC_CLASS ;
 int dev_info (int *,char*,int ,int ) ;
 int i40e_aq_query_switch_comp_bw_config (struct i40e_hw*,int ,struct i40e_aqc_query_switching_comp_bw_config_resp*,int *) ;
 int i40e_aq_query_switch_comp_ets_config (struct i40e_hw*,int ,struct i40e_aqc_query_switching_comp_ets_config_resp*,int *) ;
 int i40e_aq_str (struct i40e_hw*,int ) ;
 int i40e_stat_str (struct i40e_hw*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int i40e_veb_get_bw_info(struct i40e_veb *veb)
{
 struct i40e_aqc_query_switching_comp_ets_config_resp ets_data;
 struct i40e_aqc_query_switching_comp_bw_config_resp bw_data;
 struct i40e_pf *pf = veb->pf;
 struct i40e_hw *hw = &pf->hw;
 u32 tc_bw_max;
 int ret = 0;
 int i;

 ret = i40e_aq_query_switch_comp_bw_config(hw, veb->seid,
        &bw_data, ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "query veb bw config failed, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, hw->aq.asq_last_status));
  goto out;
 }

 ret = i40e_aq_query_switch_comp_ets_config(hw, veb->seid,
         &ets_data, ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "query veb bw ets config failed, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, hw->aq.asq_last_status));
  goto out;
 }

 veb->bw_limit = le16_to_cpu(ets_data.port_bw_limit);
 veb->bw_max_quanta = ets_data.tc_bw_max;
 veb->is_abs_credits = bw_data.absolute_credits_enable;
 veb->enabled_tc = ets_data.tc_valid_bits;
 tc_bw_max = le16_to_cpu(bw_data.tc_bw_max[0]) |
      (le16_to_cpu(bw_data.tc_bw_max[1]) << 16);
 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
  veb->bw_tc_share_credits[i] = bw_data.tc_bw_share_credits[i];
  veb->bw_tc_limit_credits[i] =
     le16_to_cpu(bw_data.tc_bw_limits[i]);
  veb->bw_tc_max_quanta[i] = ((tc_bw_max >> (i*4)) & 0x7);
 }

out:
 return ret;
}
