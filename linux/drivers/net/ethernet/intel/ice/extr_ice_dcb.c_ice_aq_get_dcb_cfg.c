
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ice_hw {int dummy; } ;
struct ice_dcbx_cfg {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_LLDPDU_SIZE ;
 int devm_kfree (int ,int *) ;
 int * devm_kzalloc (int ,int ,int ) ;
 int ice_aq_get_lldp_mib (struct ice_hw*,int ,int ,void*,int ,int *,int *,int *) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int ice_lldp_to_dcb_cfg (int *,struct ice_dcbx_cfg*) ;

enum ice_status
ice_aq_get_dcb_cfg(struct ice_hw *hw, u8 mib_type, u8 bridgetype,
     struct ice_dcbx_cfg *dcbcfg)
{
 enum ice_status ret;
 u8 *lldpmib;


 lldpmib = devm_kzalloc(ice_hw_to_dev(hw), ICE_LLDPDU_SIZE, GFP_KERNEL);
 if (!lldpmib)
  return ICE_ERR_NO_MEMORY;

 ret = ice_aq_get_lldp_mib(hw, bridgetype, mib_type, (void *)lldpmib,
      ICE_LLDPDU_SIZE, ((void*)0), ((void*)0), ((void*)0));

 if (!ret)

  ret = ice_lldp_to_dcb_cfg(lldpmib, dcbcfg);

 devm_kfree(ice_hw_to_dev(hw), lldpmib);

 return ret;
}
