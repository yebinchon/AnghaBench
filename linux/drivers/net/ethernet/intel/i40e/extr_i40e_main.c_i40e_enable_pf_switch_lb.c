
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int switch_id; int valid_sections; } ;
struct i40e_vsi_context {TYPE_1__ info; int flags; scalar_t__ vf_num; int pf_num; int seid; } ;
struct i40e_vsi {TYPE_2__* back; } ;
struct TYPE_11__ {int asq_last_status; } ;
struct TYPE_12__ {TYPE_4__ aq; int pf_id; } ;
struct i40e_pf {size_t lan_vsi; TYPE_5__ hw; TYPE_3__* pdev; int main_vsi_seid; struct i40e_vsi** vsi; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int hw; } ;


 int I40E_AQ_VSI_PROP_SWITCH_VALID ;
 int I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB ;
 int I40E_AQ_VSI_TYPE_PF ;
 int cpu_to_le16 (int ) ;
 int dev_info (int *,char*,int ,int ) ;
 int i40e_aq_get_vsi_params (TYPE_5__*,struct i40e_vsi_context*,int *) ;
 int i40e_aq_str (TYPE_5__*,int ) ;
 int i40e_aq_update_vsi_params (int *,struct i40e_vsi_context*,int *) ;
 int i40e_stat_str (TYPE_5__*,int) ;

__attribute__((used)) static void i40e_enable_pf_switch_lb(struct i40e_pf *pf)
{
 struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 struct i40e_vsi_context ctxt;
 int ret;

 ctxt.seid = pf->main_vsi_seid;
 ctxt.pf_num = pf->hw.pf_id;
 ctxt.vf_num = 0;
 ret = i40e_aq_get_vsi_params(&pf->hw, &ctxt, ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "couldn't get PF vsi config, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
  return;
 }
 ctxt.flags = I40E_AQ_VSI_TYPE_PF;
 ctxt.info.valid_sections = cpu_to_le16(I40E_AQ_VSI_PROP_SWITCH_VALID);
 ctxt.info.switch_id |= cpu_to_le16(I40E_AQ_VSI_SW_ID_FLAG_ALLOW_LB);

 ret = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, ((void*)0));
 if (ret) {
  dev_info(&pf->pdev->dev,
    "update vsi switch failed, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, ret),
    i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 }
}
