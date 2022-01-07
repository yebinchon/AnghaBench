
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct i40e_veb {int enabled_tc; int seid; struct i40e_pf* pf; } ;
struct TYPE_7__ {int asq_last_status; } ;
struct TYPE_8__ {TYPE_2__ aq; } ;
struct i40e_pf {TYPE_3__ hw; TYPE_1__* pdev; } ;
struct i40e_aqc_configure_switching_comp_bw_config_data {int tc_valid_bits; int* tc_bw_share_credits; int member_0; } ;
struct TYPE_6__ {int dev; } ;


 int BIT (int) ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int dev_info (int *,char*,int ,int ) ;
 int i40e_aq_config_switch_comp_bw_config (TYPE_3__*,int ,struct i40e_aqc_configure_switching_comp_bw_config_data*,int *) ;
 int i40e_aq_str (TYPE_3__*,int ) ;
 int i40e_stat_str (TYPE_3__*,int) ;
 int i40e_veb_get_bw_info (struct i40e_veb*) ;

int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc)
{
 struct i40e_aqc_configure_switching_comp_bw_config_data bw_data = {0};
 struct i40e_pf *pf = veb->pf;
 int ret = 0;
 int i;


 if (!enabled_tc || veb->enabled_tc == enabled_tc)
  return ret;

 bw_data.tc_valid_bits = enabled_tc;



 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
  if (enabled_tc & BIT(i))
   bw_data.tc_bw_share_credits[i] = 1;
 }

 ret = i40e_aq_config_switch_comp_bw_config(&pf->hw, veb->seid,
         &bw_data, ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "VEB bw config failed, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  goto out;
 }


 ret = i40e_veb_get_bw_info(veb);
 if (ret) {
  dev_info(&pf->pdev->dev,
    "Failed getting veb bw config, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 }

out:
 return ret;
}
