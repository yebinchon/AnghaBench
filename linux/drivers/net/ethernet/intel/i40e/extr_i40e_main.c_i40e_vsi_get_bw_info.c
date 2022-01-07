
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct i40e_vsi {int bw_limit; int* bw_ets_limit_credits; scalar_t__* bw_ets_max_quanta; int * bw_ets_share_credits; int bw_max_quanta; int seid; struct i40e_pf* back; } ;
struct TYPE_3__ {int asq_last_status; } ;
struct i40e_hw {TYPE_1__ aq; } ;
struct i40e_pf {TYPE_2__* pdev; struct i40e_hw hw; } ;
struct i40e_aqc_query_vsi_ets_sla_config_resp {scalar_t__ tc_valid_bits; int * credits; int * share_credits; int * tc_bw_max; int member_0; } ;
struct i40e_aqc_query_vsi_bw_config_resp {scalar_t__ tc_valid_bits; int max_bw; int port_bw_limit; int member_0; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int dev_info (int *,char*,scalar_t__,scalar_t__) ;
 scalar_t__ i40e_aq_query_vsi_bw_config (struct i40e_hw*,int ,struct i40e_aqc_query_vsi_bw_config_resp*,int *) ;
 scalar_t__ i40e_aq_query_vsi_ets_sla_config (struct i40e_hw*,int ,struct i40e_aqc_query_vsi_ets_sla_config_resp*,int *) ;
 scalar_t__ i40e_aq_str (struct i40e_hw*,int ) ;
 scalar_t__ i40e_stat_str (struct i40e_hw*,scalar_t__) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int i40e_vsi_get_bw_info(struct i40e_vsi *vsi)
{
 struct i40e_aqc_query_vsi_ets_sla_config_resp bw_ets_config = {0};
 struct i40e_aqc_query_vsi_bw_config_resp bw_config = {0};
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;
 i40e_status ret;
 u32 tc_bw_max;
 int i;


 ret = i40e_aq_query_vsi_bw_config(hw, vsi->seid, &bw_config, ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "couldn't get PF vsi bw config, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  return -EINVAL;
 }


 ret = i40e_aq_query_vsi_ets_sla_config(hw, vsi->seid, &bw_ets_config,
            ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "couldn't get PF vsi ets bw config, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  return -EINVAL;
 }

 if (bw_config.tc_valid_bits != bw_ets_config.tc_valid_bits) {
  dev_info(&pf->pdev->dev,
    "Enabled TCs mismatch from querying VSI BW info 0x%08x 0x%08x\n",
    bw_config.tc_valid_bits,
    bw_ets_config.tc_valid_bits);

 }

 vsi->bw_limit = le16_to_cpu(bw_config.port_bw_limit);
 vsi->bw_max_quanta = bw_config.max_bw;
 tc_bw_max = le16_to_cpu(bw_ets_config.tc_bw_max[0]) |
      (le16_to_cpu(bw_ets_config.tc_bw_max[1]) << 16);
 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
  vsi->bw_ets_share_credits[i] = bw_ets_config.share_credits[i];
  vsi->bw_ets_limit_credits[i] =
     le16_to_cpu(bw_ets_config.credits[i]);

  vsi->bw_ets_max_quanta[i] = (u8)((tc_bw_max >> (i*4)) & 0x7);
 }

 return 0;
}
