
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_get_topo_elem {int dummy; } ;
struct ice_aqc_get_topo {int num_branches; int port_num; } ;
struct TYPE_2__ {struct ice_aqc_get_topo get_topo; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,struct ice_aqc_get_topo_elem*,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_get_dflt_topo ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

__attribute__((used)) static enum ice_status
ice_aq_get_dflt_topo(struct ice_hw *hw, u8 lport,
       struct ice_aqc_get_topo_elem *buf, u16 buf_size,
       u8 *num_branches, struct ice_sq_cd *cd)
{
 struct ice_aqc_get_topo *cmd;
 struct ice_aq_desc desc;
 enum ice_status status;

 cmd = &desc.params.get_topo;
 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_dflt_topo);
 cmd->port_num = lport;
 status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
 if (!status && num_branches)
  *num_branches = cmd->num_branches;

 return status;
}
