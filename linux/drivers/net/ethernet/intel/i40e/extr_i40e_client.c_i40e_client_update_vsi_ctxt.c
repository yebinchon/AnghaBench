
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int queueing_opt_flags; void* valid_sections; } ;
struct i40e_vsi_context {TYPE_1__ info; int flags; int pf_num; int seid; } ;
struct i40e_vsi {TYPE_2__* back; } ;
struct TYPE_11__ {int asq_last_status; } ;
struct TYPE_12__ {TYPE_4__ aq; int pf_id; } ;
struct i40e_pf {size_t lan_vsi; TYPE_5__ hw; TYPE_3__* pdev; int main_vsi_seid; struct i40e_vsi** vsi; } ;
struct i40e_info {struct i40e_pf* pf; } ;
struct i40e_client {int dummy; } ;
typedef int i40e_status ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int hw; } ;


 int EINVAL ;
 int ENOENT ;
 int I40E_AQ_VSI_PROP_QUEUE_OPT_VALID ;
 int I40E_AQ_VSI_QUE_OPT_TCP_ENA ;
 int I40E_AQ_VSI_TYPE_PF ;
 int I40E_CLIENT_VSI_FLAG_TCP_ENABLE ;
 void* cpu_to_le16 (int ) ;
 int dev_info (int *,char*,int ,int ) ;
 int dev_warn (int *,char*,int ,int) ;
 int i40e_aq_get_vsi_params (TYPE_5__*,struct i40e_vsi_context*,int *) ;
 int i40e_aq_str (TYPE_5__*,int ) ;
 int i40e_aq_update_vsi_params (int *,struct i40e_vsi_context*,int *) ;
 int i40e_stat_str (TYPE_5__*,int) ;

__attribute__((used)) static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
           struct i40e_client *client,
           bool is_vf, u32 vf_id,
           u32 flag, u32 valid_flag)
{
 struct i40e_pf *pf = ldev->pf;
 struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 struct i40e_vsi_context ctxt;
 bool update = 1;
 i40e_status err;


 if (is_vf)
  return -EINVAL;

 ctxt.seid = pf->main_vsi_seid;
 ctxt.pf_num = pf->hw.pf_id;
 err = i40e_aq_get_vsi_params(&pf->hw, &ctxt, ((void*)0));
 ctxt.flags = I40E_AQ_VSI_TYPE_PF;
 if (err) {
  dev_info(&pf->pdev->dev,
    "couldn't get PF vsi config, err %s aq_err %s\n",
    i40e_stat_str(&pf->hw, err),
    i40e_aq_str(&pf->hw,
         pf->hw.aq.asq_last_status));
  return -ENOENT;
 }

 if ((valid_flag & I40E_CLIENT_VSI_FLAG_TCP_ENABLE) &&
     (flag & I40E_CLIENT_VSI_FLAG_TCP_ENABLE)) {
  ctxt.info.valid_sections =
   cpu_to_le16(I40E_AQ_VSI_PROP_QUEUE_OPT_VALID);
  ctxt.info.queueing_opt_flags |= I40E_AQ_VSI_QUE_OPT_TCP_ENA;
 } else if ((valid_flag & I40E_CLIENT_VSI_FLAG_TCP_ENABLE) &&
    !(flag & I40E_CLIENT_VSI_FLAG_TCP_ENABLE)) {
  ctxt.info.valid_sections =
   cpu_to_le16(I40E_AQ_VSI_PROP_QUEUE_OPT_VALID);
  ctxt.info.queueing_opt_flags &= ~I40E_AQ_VSI_QUE_OPT_TCP_ENA;
 } else {
  update = 0;
  dev_warn(&pf->pdev->dev,
    "Client for PF id %d request an unsupported Config: %x.\n",
    pf->hw.pf_id, flag);
 }

 if (update) {
  err = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, ((void*)0));
  if (err) {
   dev_info(&pf->pdev->dev,
     "update VSI ctxt for PE failed, err %s aq_err %s\n",
     i40e_stat_str(&pf->hw, err),
     i40e_aq_str(&pf->hw,
          pf->hw.aq.asq_last_status));
  }
 }
 return err;
}
