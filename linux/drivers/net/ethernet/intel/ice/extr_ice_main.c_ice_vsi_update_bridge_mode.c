
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct ice_aqc_vsi_props {int sw_flags; int valid_sections; } ;
struct ice_vsi_ctx {struct ice_aqc_vsi_props info; } ;
struct ice_vsi {int idx; struct ice_aqc_vsi_props info; TYPE_2__* back; } ;
struct TYPE_6__ {int sq_last_status; } ;
struct ice_hw {TYPE_3__ adminq; } ;
struct device {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_5__ {struct ice_hw hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;


 int BRIDGE_MODE_VEB ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICE_AQ_VSI_PROP_SW_VALID ;
 int ICE_AQ_VSI_SW_FLAG_ALLOW_LB ;
 int cpu_to_le16 (int ) ;
 int dev_err (struct device*,char*,int ,int,int ) ;
 int devm_kfree (struct device*,struct ice_vsi_ctx*) ;
 struct ice_vsi_ctx* devm_kzalloc (struct device*,int,int ) ;
 int ice_update_vsi (struct ice_hw*,int ,struct ice_vsi_ctx*,int *) ;

__attribute__((used)) static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
{
 struct device *dev = &vsi->back->pdev->dev;
 struct ice_aqc_vsi_props *vsi_props;
 struct ice_hw *hw = &vsi->back->hw;
 struct ice_vsi_ctx *ctxt;
 enum ice_status status;
 int ret = 0;

 vsi_props = &vsi->info;

 ctxt = devm_kzalloc(dev, sizeof(*ctxt), GFP_KERNEL);
 if (!ctxt)
  return -ENOMEM;

 ctxt->info = vsi->info;

 if (bmode == BRIDGE_MODE_VEB)

  ctxt->info.sw_flags |= ICE_AQ_VSI_SW_FLAG_ALLOW_LB;
 else

  ctxt->info.sw_flags &= ~ICE_AQ_VSI_SW_FLAG_ALLOW_LB;
 ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_SW_VALID);

 status = ice_update_vsi(hw, vsi->idx, ctxt, ((void*)0));
 if (status) {
  dev_err(dev, "update VSI for bridge mode failed, bmode = %d err %d aq_err %d\n",
   bmode, status, hw->adminq.sq_last_status);
  ret = -EIO;
  goto out;
 }

 vsi_props->sw_flags = ctxt->info.sw_flags;

out:
 devm_kfree(dev, ctxt);
 return ret;
}
