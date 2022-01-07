
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int vlan_flags; int valid_sections; } ;
struct ice_vsi_ctx {TYPE_5__ info; } ;
struct TYPE_9__ {int vlan_flags; } ;
struct ice_vsi {TYPE_4__ info; int idx; TYPE_2__* back; } ;
struct TYPE_8__ {int sq_last_status; } ;
struct ice_hw {TYPE_3__ adminq; } ;
struct device {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_7__ {struct ice_hw hw; TYPE_1__* pdev; } ;
struct TYPE_6__ {struct device dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICE_AQ_VSI_PROP_VLAN_VALID ;
 int ICE_AQ_VSI_VLAN_EMOD_M ;
 int ICE_AQ_VSI_VLAN_MODE_ALL ;
 int cpu_to_le16 (int ) ;
 int dev_err (struct device*,char*,int,int ) ;
 int devm_kfree (struct device*,struct ice_vsi_ctx*) ;
 struct ice_vsi_ctx* devm_kzalloc (struct device*,int,int ) ;
 int ice_update_vsi (struct ice_hw*,int ,struct ice_vsi_ctx*,int *) ;

int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
{
 struct device *dev = &vsi->back->pdev->dev;
 struct ice_hw *hw = &vsi->back->hw;
 struct ice_vsi_ctx *ctxt;
 enum ice_status status;
 int ret = 0;

 ctxt = devm_kzalloc(dev, sizeof(*ctxt), GFP_KERNEL);
 if (!ctxt)
  return -ENOMEM;





 ctxt->info.vlan_flags = ICE_AQ_VSI_VLAN_MODE_ALL;


 ctxt->info.vlan_flags |= (vsi->info.vlan_flags &
      ICE_AQ_VSI_VLAN_EMOD_M);

 ctxt->info.valid_sections = cpu_to_le16(ICE_AQ_VSI_PROP_VLAN_VALID);

 status = ice_update_vsi(hw, vsi->idx, ctxt, ((void*)0));
 if (status) {
  dev_err(dev, "update VSI for VLAN insert failed, err %d aq_err %d\n",
   status, hw->adminq.sq_last_status);
  ret = -EIO;
  goto out;
 }

 vsi->info.vlan_flags = ctxt->info.vlan_flags;
out:
 devm_kfree(dev, ctxt);
 return ret;
}
