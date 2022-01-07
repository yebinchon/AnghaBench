
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_manage_mac_write {int sal; int sah; int flags; } ;
struct TYPE_2__ {struct ice_aqc_manage_mac_write mac_write; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int htonl (int const) ;
 int htons (int const) ;
 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,int *,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_manage_mac_write ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

enum ice_status
ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
   struct ice_sq_cd *cd)
{
 struct ice_aqc_manage_mac_write *cmd;
 struct ice_aq_desc desc;

 cmd = &desc.params.mac_write;
 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_manage_mac_write);

 cmd->flags = flags;


 cmd->sah = htons(*((const u16 *)mac_addr));
 cmd->sal = htonl(*((const u32 *)(mac_addr + 2)));

 return ice_aq_send_cmd(hw, &desc, ((void*)0), 0, cd);
}
