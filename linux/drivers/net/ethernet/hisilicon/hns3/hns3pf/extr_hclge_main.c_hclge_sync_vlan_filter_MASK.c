#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct hclge_vport {int /*<<< orphan*/  vlan_del_fail_bmap; int /*<<< orphan*/  vport_id; } ;
struct hclge_dev {int num_alloc_vport; struct hclge_vport* vport; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int HCLGE_MAX_SYNC_COUNT ; 
 int /*<<< orphan*/  VLAN_N_VID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_vport*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hclge_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hclge_dev *hdev)
{
#define HCLGE_MAX_SYNC_COUNT	60

	int i, ret, sync_cnt = 0;
	u16 vlan_id;

	/* start from vport 1 for PF is always alive */
	for (i = 0; i < hdev->num_alloc_vport; i++) {
		struct hclge_vport *vport = &hdev->vport[i];

		vlan_id = FUNC1(vport->vlan_del_fail_bmap,
					 VLAN_N_VID);
		while (vlan_id != VLAN_N_VID) {
			ret = FUNC3(hdev, FUNC4(ETH_P_8021Q),
						       vport->vport_id, vlan_id,
						       true);
			if (ret && ret != -EINVAL)
				return;

			FUNC0(vlan_id, vport->vlan_del_fail_bmap);
			FUNC2(vport, vlan_id, false);

			sync_cnt++;
			if (sync_cnt >= HCLGE_MAX_SYNC_COUNT)
				return;

			vlan_id = FUNC1(vport->vlan_del_fail_bmap,
						 VLAN_N_VID);
		}
	}
}