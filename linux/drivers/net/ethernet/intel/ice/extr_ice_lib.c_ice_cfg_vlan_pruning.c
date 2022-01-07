
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sec_flags; int sw_flags2; int valid_sections; } ;
struct ice_vsi_ctx {TYPE_3__ info; } ;
struct ice_vsi {TYPE_3__ info; int vsi_num; int idx; int netdev; struct ice_pf* back; } ;
struct TYPE_6__ {int sq_last_status; } ;
struct TYPE_8__ {TYPE_2__ adminq; } ;
struct ice_pf {TYPE_4__ hw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICE_AQ_VSI_PROP_SECURITY_VALID ;
 int ICE_AQ_VSI_PROP_SW_VALID ;
 int ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S ;
 int ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA ;
 int ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA ;
 int cpu_to_le16 (int) ;
 int devm_kfree (struct device*,struct ice_vsi_ctx*) ;
 struct ice_vsi_ctx* devm_kzalloc (struct device*,int,int ) ;
 int ice_update_vsi (TYPE_4__*,int ,struct ice_vsi_ctx*,int *) ;
 int netdev_err (int ,char*,char*,int ,int ,int,int ) ;

int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
{
 struct ice_vsi_ctx *ctxt;
 struct device *dev;
 struct ice_pf *pf;
 int status;

 if (!vsi)
  return -EINVAL;

 pf = vsi->back;
 dev = &pf->pdev->dev;
 ctxt = devm_kzalloc(dev, sizeof(*ctxt), GFP_KERNEL);
 if (!ctxt)
  return -ENOMEM;

 ctxt->info = vsi->info;

 if (ena) {
  ctxt->info.sec_flags |=
   ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
   ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S;
  ctxt->info.sw_flags2 |= ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
 } else {
  ctxt->info.sec_flags &=
   ~(ICE_AQ_VSI_SEC_TX_VLAN_PRUNE_ENA <<
     ICE_AQ_VSI_SEC_TX_PRUNE_ENA_S);
  ctxt->info.sw_flags2 &= ~ICE_AQ_VSI_SW_FLAG_RX_VLAN_PRUNE_ENA;
 }

 if (!vlan_promisc)
  ctxt->info.valid_sections =
   cpu_to_le16(ICE_AQ_VSI_PROP_SECURITY_VALID |
        ICE_AQ_VSI_PROP_SW_VALID);

 status = ice_update_vsi(&pf->hw, vsi->idx, ctxt, ((void*)0));
 if (status) {
  netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %d, aq_err = %d\n",
      ena ? "En" : "Dis", vsi->idx, vsi->vsi_num, status,
      pf->hw.adminq.sq_last_status);
  goto err_out;
 }

 vsi->info.sec_flags = ctxt->info.sec_flags;
 vsi->info.sw_flags2 = ctxt->info.sw_flags2;

 devm_kfree(dev, ctxt);
 return 0;

err_out:
 devm_kfree(dev, ctxt);
 return -EIO;
}
