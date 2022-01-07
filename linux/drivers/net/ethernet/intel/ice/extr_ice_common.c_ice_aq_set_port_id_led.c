
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_sq_cd {int dummy; } ;
struct ice_port_info {struct ice_hw* hw; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_set_port_id_led {int ident_mode; } ;
struct TYPE_2__ {struct ice_aqc_set_port_id_led set_port_id_led; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQC_PORT_IDENT_LED_BLINK ;
 int ICE_AQC_PORT_IDENT_LED_ORIG ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_set_port_id_led ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

enum ice_status
ice_aq_set_port_id_led(struct ice_port_info *pi, bool is_orig_mode,
         struct ice_sq_cd *cd)
{
 struct ice_aqc_set_port_id_led *cmd;
 struct ice_hw *hw = pi->hw;
 struct ice_aq_desc desc;

 cmd = &desc.params.set_port_id_led;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_port_id_led);

 if (is_orig_mode)
  cmd->ident_mode = ICE_AQC_PORT_IDENT_LED_ORIG;
 else
  cmd->ident_mode = ICE_AQC_PORT_IDENT_LED_BLINK;

 return ice_aq_send_cmd(hw, &desc, ((void*)0), 0, cd);
}
