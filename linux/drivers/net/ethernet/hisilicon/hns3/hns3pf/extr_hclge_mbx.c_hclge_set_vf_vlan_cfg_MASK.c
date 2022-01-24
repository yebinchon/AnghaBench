#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct hclge_vport {TYPE_1__ port_base_vlan_cfg; struct hnae3_handle nic; } ;
struct hclge_vlan_info {int dummy; } ;
struct hclge_vf_vlan_cfg {scalar_t__ subcode; int is_kill; int /*<<< orphan*/  proto; int /*<<< orphan*/  vlan; } ;
struct hclge_mbx_vf_to_pf_cmd {scalar_t__* msg; } ;

/* Variables and functions */
 scalar_t__ HCLGE_MBX_GET_PORT_BASE_VLAN_STATE ; 
 scalar_t__ HCLGE_MBX_PORT_BASE_VLAN_CFG ; 
 scalar_t__ HCLGE_MBX_VLAN_FILTER ; 
 scalar_t__ HCLGE_MBX_VLAN_RX_OFF_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hnae3_handle*,int) ; 
 int FUNC2 (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct hnae3_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct hclge_vport*,int /*<<< orphan*/ ,struct hclge_vlan_info*) ; 

__attribute__((used)) static int FUNC5(struct hclge_vport *vport,
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
		vlan =  msg_cmd->vlan;
		proto =  msg_cmd->proto;
		status = FUNC3(handle, FUNC0(proto),
					       vlan, is_kill);
	} else if (msg_cmd->subcode == HCLGE_MBX_VLAN_RX_OFF_CFG) {
		struct hnae3_handle *handle = &vport->nic;
		bool en = msg_cmd->is_kill ? true : false;

		status = FUNC1(handle, en);
	} else if (mbx_req->msg[1] == HCLGE_MBX_PORT_BASE_VLAN_CFG) {
		struct hclge_vlan_info *vlan_info;
		u16 *state;

		state = (u16 *)&mbx_req->msg[2];
		vlan_info = (struct hclge_vlan_info *)&mbx_req->msg[4];
		status = FUNC4(vport, *state,
							 vlan_info);
	} else if (mbx_req->msg[1] == HCLGE_MBX_GET_PORT_BASE_VLAN_STATE) {
		u8 state;

		state = vport->port_base_vlan_cfg.state;
		status = FUNC2(vport, mbx_req, 0, &state,
					      sizeof(u8));
	}

	return status;
}