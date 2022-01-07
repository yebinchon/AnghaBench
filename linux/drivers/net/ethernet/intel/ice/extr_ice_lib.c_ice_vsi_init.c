
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int valid_sections; int sec_flags; int sw_id; int sw_flags; } ;
struct ice_vsi_ctx {int vsi_num; TYPE_5__ info; int vf_num; int flags; } ;
struct ice_vsi {int type; size_t vf_id; int vsi_num; TYPE_5__ info; int idx; TYPE_3__* port_info; TYPE_2__* vsw; struct ice_pf* back; } ;
struct TYPE_7__ {int vf_base_id; } ;
struct ice_hw {TYPE_1__ func_caps; } ;
struct ice_pf {TYPE_6__* pdev; TYPE_4__* vf; int flags; struct ice_hw hw; } ;
struct TYPE_12__ {int dev; } ;
struct TYPE_10__ {scalar_t__ spoofchk; } ;
struct TYPE_9__ {int sw_id; } ;
struct TYPE_8__ {scalar_t__ bridge_mode; } ;


 scalar_t__ BRIDGE_MODE_VEB ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICE_AQ_VSI_PROP_SECURITY_VALID ;
 int ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD ;
 int ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF ;
 int ICE_AQ_VSI_SW_FLAG_ALLOW_LB ;
 int ICE_AQ_VSI_TYPE_PF ;
 int ICE_AQ_VSI_TYPE_VF ;
 int ICE_FLAG_RSS_ENA ;



 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_kfree (int *,struct ice_vsi_ctx*) ;
 struct ice_vsi_ctx* devm_kzalloc (int *,int,int ) ;
 int ice_add_vsi (struct ice_hw*,int ,struct ice_vsi_ctx*,int *) ;
 int ice_set_dflt_vsi_ctx (struct ice_vsi_ctx*) ;
 int ice_set_rss_vsi_ctx (struct ice_vsi_ctx*,struct ice_vsi*) ;
 int ice_vsi_setup_q_map (struct ice_vsi*,struct ice_vsi_ctx*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ice_vsi_init(struct ice_vsi *vsi)
{
 struct ice_pf *pf = vsi->back;
 struct ice_hw *hw = &pf->hw;
 struct ice_vsi_ctx *ctxt;
 int ret = 0;

 ctxt = devm_kzalloc(&pf->pdev->dev, sizeof(*ctxt), GFP_KERNEL);
 if (!ctxt)
  return -ENOMEM;

 ctxt->info = vsi->info;
 switch (vsi->type) {
 case 130:

 case 129:
  ctxt->flags = ICE_AQ_VSI_TYPE_PF;
  break;
 case 128:
  ctxt->flags = ICE_AQ_VSI_TYPE_VF;

  ctxt->vf_num = vsi->vf_id + hw->func_caps.vf_base_id;
  break;
 default:
  return -ENODEV;
 }

 ice_set_dflt_vsi_ctx(ctxt);

 if (vsi->vsw->bridge_mode == BRIDGE_MODE_VEB)
  ctxt->info.sw_flags |= ICE_AQ_VSI_SW_FLAG_ALLOW_LB;


 if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
  ice_set_rss_vsi_ctx(ctxt, vsi);

 ctxt->info.sw_id = vsi->port_info->sw_id;
 ice_vsi_setup_q_map(vsi, ctxt);


 if (vsi->type == 128 && pf->vf[vsi->vf_id].spoofchk) {
  ctxt->info.valid_sections |=
   cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
  ctxt->info.sec_flags |=
   ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF;
 }


 if (vsi->type == 129) {
  ctxt->info.sec_flags |= ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD;
  ctxt->info.valid_sections |=
   cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID);
 }

 ret = ice_add_vsi(hw, vsi->idx, ctxt, ((void*)0));
 if (ret) {
  dev_err(&pf->pdev->dev,
   "Add VSI failed, err %d\n", ret);
  return -EIO;
 }


 vsi->info = ctxt->info;


 vsi->vsi_num = ctxt->vsi_num;

 devm_kfree(&pf->pdev->dev, ctxt);
 return ret;
}
