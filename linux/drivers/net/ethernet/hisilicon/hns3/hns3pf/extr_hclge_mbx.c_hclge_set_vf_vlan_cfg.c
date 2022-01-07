
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct hclge_vport {TYPE_1__ port_base_vlan_cfg; struct hnae3_handle nic; } ;
struct hclge_vlan_info {int dummy; } ;
struct hclge_vf_vlan_cfg {scalar_t__ subcode; int is_kill; int proto; int vlan; } ;
struct hclge_mbx_vf_to_pf_cmd {scalar_t__* msg; } ;


 scalar_t__ HCLGE_MBX_GET_PORT_BASE_VLAN_STATE ;
 scalar_t__ HCLGE_MBX_PORT_BASE_VLAN_CFG ;
 scalar_t__ HCLGE_MBX_VLAN_FILTER ;
 scalar_t__ HCLGE_MBX_VLAN_RX_OFF_CFG ;
 int cpu_to_be16 (int ) ;
 int hclge_en_hw_strip_rxvtag (struct hnae3_handle*,int) ;
 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int ,int *,int) ;
 int hclge_set_vlan_filter (struct hnae3_handle*,int ,int ,int) ;
 int hclge_update_port_base_vlan_cfg (struct hclge_vport*,int ,struct hclge_vlan_info*) ;

__attribute__((used)) static int hclge_set_vf_vlan_cfg(struct hclge_vport *vport,
     struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 struct hclge_vf_vlan_cfg *msg_cmd;
 int status = 0;

 msg_cmd = (struct hclge_vf_vlan_cfg *)mbx_req->msg;
 if (msg_cmd->subcode == HCLGE_MBX_VLAN_FILTER) {
  struct hnae3_handle *handle = &vport->nic;
  u16 vlan, proto;
  bool is_kill;

  is_kill = !!msg_cmd->is_kill;
  vlan = msg_cmd->vlan;
  proto = msg_cmd->proto;
  status = hclge_set_vlan_filter(handle, cpu_to_be16(proto),
            vlan, is_kill);
 } else if (msg_cmd->subcode == HCLGE_MBX_VLAN_RX_OFF_CFG) {
  struct hnae3_handle *handle = &vport->nic;
  bool en = msg_cmd->is_kill ? 1 : 0;

  status = hclge_en_hw_strip_rxvtag(handle, en);
 } else if (mbx_req->msg[1] == HCLGE_MBX_PORT_BASE_VLAN_CFG) {
  struct hclge_vlan_info *vlan_info;
  u16 *state;

  state = (u16 *)&mbx_req->msg[2];
  vlan_info = (struct hclge_vlan_info *)&mbx_req->msg[4];
  status = hclge_update_port_base_vlan_cfg(vport, *state,
        vlan_info);
 } else if (mbx_req->msg[1] == HCLGE_MBX_GET_PORT_BASE_VLAN_STATE) {
  u8 state;

  state = vport->port_base_vlan_cfg.state;
  status = hclge_gen_resp_to_vf(vport, mbx_req, 0, &state,
           sizeof(u8));
 }

 return status;
}
