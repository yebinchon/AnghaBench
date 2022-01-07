
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hwrm_func_qcfg_output {int port_partition_type; scalar_t__ evb_mode; int max_mtu_configured; int flags; int registered_vfs; int vlan; } ;
struct hwrm_func_qcfg_input {int fid; int member_0; } ;
struct bnxt_vf_info {int vlan; } ;
struct TYPE_2__ {int registered_vfs; } ;
struct bnxt {int port_partition_type; int hwrm_spec_code; int max_mtu; int hwrm_cmd_lock; int br_mode; int flags; int fw_cap; TYPE_1__ pf; struct bnxt_vf_info vf; struct hwrm_func_qcfg_output* hwrm_cmd_resp_addr; } ;
typedef int req ;


 int BNXT_FLAG_MULTI_HOST ;
 int BNXT_FW_CAP_DCBX_AGENT ;
 int BNXT_FW_CAP_LLDP_AGENT ;
 int BNXT_MAX_MTU ;
 scalar_t__ BNXT_PF (struct bnxt*) ;
 scalar_t__ BNXT_VF (struct bnxt*) ;
 int BRIDGE_MODE_UNDEF ;
 int BRIDGE_MODE_VEB ;
 int BRIDGE_MODE_VEPA ;
 scalar_t__ FUNC_QCFG_RESP_EVB_MODE_VEB ;
 scalar_t__ FUNC_QCFG_RESP_EVB_MODE_VEPA ;
 int FUNC_QCFG_RESP_FLAGS_FW_DCBX_AGENT_ENABLED ;
 int FUNC_QCFG_RESP_FLAGS_FW_LLDP_AGENT_ENABLED ;
 int FUNC_QCFG_RESP_FLAGS_MULTI_HOST ;



 int HWRM_CMD_TIMEOUT ;
 int HWRM_FUNC_QCFG ;
 int VLAN_VID_MASK ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_func_qcfg_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_func_qcfg_input*,int ,int,int) ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_func_qcfg(struct bnxt *bp)
{
 struct hwrm_func_qcfg_input req = {0};
 struct hwrm_func_qcfg_output *resp = bp->hwrm_cmd_resp_addr;
 u16 flags;
 int rc;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_FUNC_QCFG, -1, -1);
 req.fid = cpu_to_le16(0xffff);
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (rc)
  goto func_qcfg_exit;
 flags = le16_to_cpu(resp->flags);
 if (flags & (FUNC_QCFG_RESP_FLAGS_FW_DCBX_AGENT_ENABLED |
       FUNC_QCFG_RESP_FLAGS_FW_LLDP_AGENT_ENABLED)) {
  bp->fw_cap |= BNXT_FW_CAP_LLDP_AGENT;
  if (flags & FUNC_QCFG_RESP_FLAGS_FW_DCBX_AGENT_ENABLED)
   bp->fw_cap |= BNXT_FW_CAP_DCBX_AGENT;
 }
 if (BNXT_PF(bp) && (flags & FUNC_QCFG_RESP_FLAGS_MULTI_HOST))
  bp->flags |= BNXT_FLAG_MULTI_HOST;

 switch (resp->port_partition_type) {
 case 130:
 case 129:
 case 128:
  bp->port_partition_type = resp->port_partition_type;
  break;
 }
 if (bp->hwrm_spec_code < 0x10707 ||
     resp->evb_mode == FUNC_QCFG_RESP_EVB_MODE_VEB)
  bp->br_mode = BRIDGE_MODE_VEB;
 else if (resp->evb_mode == FUNC_QCFG_RESP_EVB_MODE_VEPA)
  bp->br_mode = BRIDGE_MODE_VEPA;
 else
  bp->br_mode = BRIDGE_MODE_UNDEF;

 bp->max_mtu = le16_to_cpu(resp->max_mtu_configured);
 if (!bp->max_mtu)
  bp->max_mtu = BNXT_MAX_MTU;

func_qcfg_exit:
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
