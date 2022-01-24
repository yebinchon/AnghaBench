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
struct hclge_vport {int /*<<< orphan*/  vport_id; struct hclge_dev* back; } ;
struct hclge_mac_vlan_tbl_entry_cmd {int /*<<< orphan*/  entry_type; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {struct hclge_mac_vlan_tbl_entry_cmd* data; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  HCLGE_MAC_VLAN_BIT0_EN_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*) ; 
 int FUNC2 (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_mac_vlan_tbl_entry_cmd*,unsigned char const*,int) ; 
 int FUNC4 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct hclge_mac_vlan_tbl_entry_cmd*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct hclge_vport *vport,
			     const unsigned char *addr)
{
	struct hclge_dev *hdev = vport->back;
	struct hclge_mac_vlan_tbl_entry_cmd req;
	struct hclge_desc desc[3];
	int status;

	/* mac addr check */
	if (!FUNC6(addr)) {
		FUNC0(&hdev->pdev->dev,
			"Add mc mac err! invalid mac:%pM.\n",
			 addr);
		return -EINVAL;
	}
	FUNC7(&req, 0, sizeof(req));
	FUNC5(req.entry_type, HCLGE_MAC_VLAN_BIT0_EN_B, 0);
	FUNC3(&req, addr, true);
	status = FUNC2(vport, &req, desc, true);
	if (status) {
		/* This mac addr do not exist, add new entry for it */
		FUNC7(desc[0].data, 0, sizeof(desc[0].data));
		FUNC7(desc[1].data, 0, sizeof(desc[0].data));
		FUNC7(desc[2].data, 0, sizeof(desc[0].data));
	}
	status = FUNC4(desc, vport->vport_id, false);
	if (status)
		return status;
	status = FUNC1(vport, &req, desc);

	if (status == -ENOSPC)
		FUNC0(&hdev->pdev->dev, "mc mac vlan table is full\n");

	return status;
}