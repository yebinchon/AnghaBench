
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ice_dcbx_cfg {scalar_t__ app_mode; } ;
struct ice_port_info {struct ice_dcbx_cfg local_dcbx_cfg; struct ice_hw* hw; } ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 scalar_t__ ICE_DCBX_APPS_NON_WILLING ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_ERR_PARAM ;
 int ICE_LLDPDU_SIZE ;
 int SET_LOCAL_MIB_TYPE_CEE_NON_WILLING ;
 int SET_LOCAL_MIB_TYPE_LOCAL_MIB ;
 int devm_kfree (int ,int *) ;
 int * devm_kzalloc (int ,int ,int ) ;
 int ice_aq_set_lldp_mib (struct ice_hw*,int ,void*,int ,int *) ;
 int ice_dcb_cfg_to_lldp (int *,int *,struct ice_dcbx_cfg*) ;
 int ice_hw_to_dev (struct ice_hw*) ;

enum ice_status ice_set_dcb_cfg(struct ice_port_info *pi)
{
 u8 mib_type, *lldpmib = ((void*)0);
 struct ice_dcbx_cfg *dcbcfg;
 enum ice_status ret;
 struct ice_hw *hw;
 u16 miblen;

 if (!pi)
  return ICE_ERR_PARAM;

 hw = pi->hw;


 dcbcfg = &pi->local_dcbx_cfg;

 lldpmib = devm_kzalloc(ice_hw_to_dev(hw), ICE_LLDPDU_SIZE, GFP_KERNEL);
 if (!lldpmib)
  return ICE_ERR_NO_MEMORY;

 mib_type = SET_LOCAL_MIB_TYPE_LOCAL_MIB;
 if (dcbcfg->app_mode == ICE_DCBX_APPS_NON_WILLING)
  mib_type |= SET_LOCAL_MIB_TYPE_CEE_NON_WILLING;

 ice_dcb_cfg_to_lldp(lldpmib, &miblen, dcbcfg);
 ret = ice_aq_set_lldp_mib(hw, mib_type, (void *)lldpmib, miblen,
      ((void*)0));

 devm_kfree(ice_hw_to_dev(hw), lldpmib);

 return ret;
}
