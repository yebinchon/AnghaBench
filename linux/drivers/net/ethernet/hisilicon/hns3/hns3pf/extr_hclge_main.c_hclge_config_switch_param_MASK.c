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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hclge_mac_vlan_switch_cmd {void* param_mask; void* switch_param; int /*<<< orphan*/  func_id; int /*<<< orphan*/  roce_sel; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_MAC_VLAN_NIC_SEL ; 
 int /*<<< orphan*/  HCLGE_OPC_MAC_VLAN_SWITCH_PARAM ; 
 int /*<<< orphan*/  HOST_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev, int vfid,
				     u8 switch_param, u8 param_mask)
{
	struct hclge_mac_vlan_switch_cmd *req;
	struct hclge_desc desc;
	u32 func_id;
	int ret;

	func_id = FUNC4(HOST_PORT, 0, vfid, 0);
	req = (struct hclge_mac_vlan_switch_cmd *)desc.data;
	FUNC3(&desc, HCLGE_OPC_MAC_VLAN_SWITCH_PARAM,
				   false);
	req->roce_sel = HCLGE_MAC_VLAN_NIC_SEL;
	req->func_id = FUNC0(func_id);
	req->switch_param = switch_param;
	req->param_mask = param_mask;

	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		FUNC1(&hdev->pdev->dev,
			"set mac vlan switch parameter fail, ret = %d\n", ret);
	return ret;
}