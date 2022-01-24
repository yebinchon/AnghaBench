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
struct hclge_desc {int dummy; } ;
typedef  int /*<<< orphan*/  req ;
typedef  enum hclge_cmd_status { ____Placeholder_hclge_cmd_status } hclge_cmd_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HCLGE_MAC_VLAN_BIT0_EN_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char const*) ; 
 int FUNC1 (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*) ; 
 scalar_t__ FUNC2 (struct hclge_desc*) ; 
 int FUNC3 (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_mac_vlan_tbl_entry_cmd*,unsigned char const*,int) ; 
 int FUNC5 (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*) ; 
 int FUNC6 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct hclge_mac_vlan_tbl_entry_cmd*,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct hclge_vport *vport,
			    const unsigned char *addr)
{
	struct hclge_dev *hdev = vport->back;
	struct hclge_mac_vlan_tbl_entry_cmd req;
	enum hclge_cmd_status status;
	struct hclge_desc desc[3];

	/* mac addr check */
	if (!FUNC8(addr)) {
		FUNC0(&hdev->pdev->dev,
			"Remove mc mac err! invalid mac:%pM.\n",
			 addr);
		return -EINVAL;
	}

	FUNC9(&req, 0, sizeof(req));
	FUNC7(req.entry_type, HCLGE_MAC_VLAN_BIT0_EN_B, 0);
	FUNC4(&req, addr, true);
	status = FUNC3(vport, &req, desc, true);
	if (!status) {
		/* This mac addr exist, remove this handle's VFID for it */
		status = FUNC6(desc, vport->vport_id, true);
		if (status)
			return status;

		if (FUNC2(desc))
			/* All the vfid is zero, so need to delete this entry */
			status = FUNC5(vport, &req);
		else
			/* Not all the vfid is zero, update the vfid */
			status = FUNC1(vport, &req, desc);

	} else {
		/* Maybe this mac address is in mta table, but it cannot be
		 * deleted here because an entry of mta represents an address
		 * range rather than a specific address. the delete action to
		 * all entries will take effect in update_mta_status called by
		 * hns3_nic_set_rx_mode.
		 */
		status = 0;
	}

	return status;
}