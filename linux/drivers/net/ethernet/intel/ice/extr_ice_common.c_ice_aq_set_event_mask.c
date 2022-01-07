
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_set_event_mask {int event_mask; int lport_num; } ;
struct TYPE_2__ {struct ice_aqc_set_event_mask set_event_mask; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int cpu_to_le16 (int ) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_set_event_mask ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

enum ice_status
ice_aq_set_event_mask(struct ice_hw *hw, u8 port_num, u16 mask,
        struct ice_sq_cd *cd)
{
 struct ice_aqc_set_event_mask *cmd;
 struct ice_aq_desc desc;

 cmd = &desc.params.set_event_mask;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_set_event_mask);

 cmd->lport_num = port_num;

 cmd->event_mask = cpu_to_le16(mask);
 return ice_aq_send_cmd(hw, &desc, ((void*)0), 0, cd);
}
