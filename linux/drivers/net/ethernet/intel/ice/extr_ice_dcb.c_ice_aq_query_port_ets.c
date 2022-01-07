
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_port_info {int hw; TYPE_3__* root; } ;
struct ice_aqc_query_port_ets {int port_teid; } ;
struct ice_aqc_port_ets_elem {int dummy; } ;
struct TYPE_4__ {struct ice_aqc_query_port_ets port_ets; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_5__ {int node_teid; } ;
struct TYPE_6__ {TYPE_2__ info; } ;


 int ICE_ERR_PARAM ;
 int ice_aq_send_cmd (int ,struct ice_aq_desc*,struct ice_aqc_port_ets_elem*,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_query_port_ets ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

__attribute__((used)) static enum ice_status
ice_aq_query_port_ets(struct ice_port_info *pi,
        struct ice_aqc_port_ets_elem *buf, u16 buf_size,
        struct ice_sq_cd *cd)
{
 struct ice_aqc_query_port_ets *cmd;
 struct ice_aq_desc desc;
 enum ice_status status;

 if (!pi)
  return ICE_ERR_PARAM;
 cmd = &desc.params.port_ets;
 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_query_port_ets);
 cmd->port_teid = pi->root->info.node_teid;

 status = ice_aq_send_cmd(pi->hw, &desc, buf, buf_size, cd);
 return status;
}
