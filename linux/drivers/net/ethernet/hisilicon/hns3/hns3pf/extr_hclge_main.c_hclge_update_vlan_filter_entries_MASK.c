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
typedef  scalar_t__ u16 ;
struct hclge_vport {int /*<<< orphan*/  vport_id; struct hclge_dev* back; } ;
struct hclge_vlan_info {int /*<<< orphan*/  vlan_tag; int /*<<< orphan*/  vlan_proto; } ;
struct hclge_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ HNAE3_PORT_BASE_VLAN_ENABLE ; 
 int FUNC0 (struct hclge_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_vport*,int) ; 
 int FUNC2 (struct hclge_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hclge_vport *vport,
					    u16 port_base_vlan_state,
					    struct hclge_vlan_info *new_info,
					    struct hclge_vlan_info *old_info)
{
	struct hclge_dev *hdev = vport->back;
	int ret;

	if (port_base_vlan_state == HNAE3_PORT_BASE_VLAN_ENABLE) {
		FUNC1(vport, false);
		return FUNC2(hdev,
						 FUNC3(new_info->vlan_proto),
						 vport->vport_id,
						 new_info->vlan_tag,
						 false);
	}

	ret = FUNC2(hdev, FUNC3(old_info->vlan_proto),
				       vport->vport_id, old_info->vlan_tag,
				       true);
	if (ret)
		return ret;

	return FUNC0(vport);
}