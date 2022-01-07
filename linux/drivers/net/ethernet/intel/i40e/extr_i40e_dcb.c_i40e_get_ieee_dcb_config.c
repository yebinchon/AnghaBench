
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ asq_last_status; } ;
struct TYPE_4__ {int dcbx_mode; } ;
struct i40e_hw {TYPE_1__ aq; TYPE_2__ remote_dcbx_config; TYPE_2__ local_dcbx_config; } ;
typedef scalar_t__ i40e_status ;


 int I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE ;
 int I40E_AQ_LLDP_MIB_LOCAL ;
 int I40E_AQ_LLDP_MIB_REMOTE ;
 scalar_t__ I40E_AQ_RC_ENOENT ;
 int I40E_DCBX_MODE_IEEE ;
 scalar_t__ i40e_aq_get_dcb_config (struct i40e_hw*,int ,int ,TYPE_2__*) ;

__attribute__((used)) static i40e_status i40e_get_ieee_dcb_config(struct i40e_hw *hw)
{
 i40e_status ret = 0;


 hw->local_dcbx_config.dcbx_mode = I40E_DCBX_MODE_IEEE;

 ret = i40e_aq_get_dcb_config(hw, I40E_AQ_LLDP_MIB_LOCAL, 0,
         &hw->local_dcbx_config);
 if (ret)
  goto out;


 ret = i40e_aq_get_dcb_config(hw, I40E_AQ_LLDP_MIB_REMOTE,
         I40E_AQ_LLDP_BRIDGE_TYPE_NEAREST_BRIDGE,
         &hw->remote_dcbx_config);

 if (hw->aq.asq_last_status == I40E_AQ_RC_ENOENT)
  ret = 0;

out:
 return ret;
}
