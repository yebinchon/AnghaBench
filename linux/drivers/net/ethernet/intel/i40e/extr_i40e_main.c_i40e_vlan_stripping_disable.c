
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int valid_sections; int port_vlan_flags; scalar_t__ pvid; } ;
struct i40e_vsi_context {TYPE_1__ info; int seid; } ;
struct i40e_vsi {TYPE_4__* back; TYPE_1__ info; int seid; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_10__ {int asq_last_status; } ;
struct TYPE_12__ {TYPE_3__ aq; } ;
struct TYPE_11__ {TYPE_5__ hw; TYPE_2__* pdev; } ;
struct TYPE_9__ {int dev; } ;


 int I40E_AQ_VSI_PROP_VLAN_VALID ;
 int I40E_AQ_VSI_PVLAN_EMOD_MASK ;
 int I40E_AQ_VSI_PVLAN_EMOD_NOTHING ;
 int I40E_AQ_VSI_PVLAN_MODE_ALL ;
 int cpu_to_le16 (int ) ;
 int dev_info (int *,char*,int ,int ) ;
 int i40e_aq_str (TYPE_5__*,int ) ;
 scalar_t__ i40e_aq_update_vsi_params (TYPE_5__*,struct i40e_vsi_context*,int *) ;
 int i40e_stat_str (TYPE_5__*,scalar_t__) ;

void i40e_vlan_stripping_disable(struct i40e_vsi *vsi)
{
 struct i40e_vsi_context ctxt;
 i40e_status ret;


 if (vsi->info.pvid)
  return;

 if ((vsi->info.valid_sections &
      cpu_to_le16(I40E_AQ_VSI_PROP_VLAN_VALID)) &&
     ((vsi->info.port_vlan_flags & I40E_AQ_VSI_PVLAN_EMOD_MASK) ==
      I40E_AQ_VSI_PVLAN_EMOD_MASK))
  return;

 vsi->info.valid_sections = cpu_to_le16(I40E_AQ_VSI_PROP_VLAN_VALID);
 vsi->info.port_vlan_flags = I40E_AQ_VSI_PVLAN_MODE_ALL |
        I40E_AQ_VSI_PVLAN_EMOD_NOTHING;

 ctxt.seid = vsi->seid;
 ctxt.info = vsi->info;
 ret = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, ((void*)0));
 if (ret) {
  dev_info(&vsi->back->pdev->dev,
    "update vlan stripping failed, err %s aq_err %s\n",
    i40e_stat_str(&vsi->back->hw, ret),
    i40e_aq_str(&vsi->back->hw,
         vsi->back->hw.aq.asq_last_status));
 }
}
