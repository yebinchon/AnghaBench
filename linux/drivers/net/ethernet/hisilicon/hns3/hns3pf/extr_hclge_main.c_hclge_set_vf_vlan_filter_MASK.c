#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct hnae3_handle {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct hclge_vport {int /*<<< orphan*/  state; TYPE_2__ port_base_vlan_cfg; struct hclge_dev* back; } ;
struct hclge_vlan_info {int vlan_tag; int qos; int /*<<< orphan*/  vlan_proto; } ;
struct hclge_dev {int num_alloc_vfs; struct hclge_vport* vport; TYPE_1__* pdev; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_3__ {int revision; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  HCLGE_VPORT_STATE_ALIVE ; 
 int /*<<< orphan*/  HNAE3_DOWN_CLIENT ; 
 int HNAE3_PORT_BASE_VLAN_NOCHANGE ; 
 int /*<<< orphan*/  HNAE3_UP_CLIENT ; 
 int VLAN_N_VID ; 
 int FUNC0 (struct hclge_vport*,int /*<<< orphan*/ ,int) ; 
 struct hclge_vport* FUNC1 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hclge_vport*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hclge_vport*,int,struct hclge_vlan_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hnae3_handle *handle, int vfid,
				    u16 vlan, u8 qos, __be16 proto)
{
	struct hclge_vport *vport = FUNC1(handle);
	struct hclge_dev *hdev = vport->back;
	struct hclge_vlan_info vlan_info;
	u16 state;
	int ret;

	if (hdev->pdev->revision == 0x20)
		return -EOPNOTSUPP;

	/* qos is a 3 bits value, so can not be bigger than 7 */
	if (vfid >= hdev->num_alloc_vfs || vlan > VLAN_N_VID - 1 || qos > 7)
		return -EINVAL;
	if (proto != FUNC5(ETH_P_8021Q))
		return -EPROTONOSUPPORT;

	vport = &hdev->vport[vfid];
	state = FUNC0(vport,
					       vport->port_base_vlan_cfg.state,
					       vlan);
	if (state == HNAE3_PORT_BASE_VLAN_NOCHANGE)
		return 0;

	vlan_info.vlan_tag = vlan;
	vlan_info.qos = qos;
	vlan_info.vlan_proto = FUNC6(proto);

	/* update port based VLAN for PF */
	if (!vfid) {
		FUNC2(hdev, HNAE3_DOWN_CLIENT);
		ret = FUNC4(vport, state, &vlan_info);
		FUNC2(hdev, HNAE3_UP_CLIENT);

		return ret;
	}

	if (!FUNC7(HCLGE_VPORT_STATE_ALIVE, &vport->state)) {
		return FUNC4(vport, state,
						       &vlan_info);
	} else {
		ret = FUNC3(&hdev->vport[0],
							(u8)vfid, state,
							vlan, qos,
							FUNC6(proto));
		return ret;
	}
}