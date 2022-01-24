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
typedef  int /*<<< orphan*/  u16 ;
struct hclge_vport {int /*<<< orphan*/  vport_id; struct hclge_dev* back; } ;
struct hclge_mac_vlan_tbl_entry_cmd {int /*<<< orphan*/  egress_port; } ;
struct hclge_dev {unsigned char const* priv_umv_size; TYPE_1__* pdev; } ;
struct hclge_desc {int dummy; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  HCLGE_MAC_EPORT_VFID_M ; 
 int /*<<< orphan*/  HCLGE_MAC_EPORT_VFID_S ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned char const*) ; 
 int FUNC3 (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_vport*) ; 
 int FUNC5 (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hclge_mac_vlan_tbl_entry_cmd*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hclge_vport*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned char const*) ; 
 scalar_t__ FUNC10 (unsigned char const*) ; 
 scalar_t__ FUNC11 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct hclge_mac_vlan_tbl_entry_cmd*,int /*<<< orphan*/ ,int) ; 

int FUNC13(struct hclge_vport *vport,
			     const unsigned char *addr)
{
	struct hclge_dev *hdev = vport->back;
	struct hclge_mac_vlan_tbl_entry_cmd req;
	struct hclge_desc desc;
	u16 egress_port = 0;
	int ret;

	/* mac addr check */
	if (FUNC11(addr) ||
	    FUNC9(addr) ||
	    FUNC10(addr)) {
		FUNC1(&hdev->pdev->dev,
			"Set_uc mac err! invalid mac:%pM. is_zero:%d,is_br=%d,is_mul=%d\n",
			 addr, FUNC11(addr),
			 FUNC9(addr),
			 FUNC10(addr));
		return -EINVAL;
	}

	FUNC12(&req, 0, sizeof(req));

	FUNC8(egress_port, HCLGE_MAC_EPORT_VFID_M,
			HCLGE_MAC_EPORT_VFID_S, vport->vport_id);

	req.egress_port = FUNC0(egress_port);

	FUNC6(&req, addr, false);

	/* Lookup the mac address in the mac_vlan table, and add
	 * it if the entry is inexistent. Repeated unicast entry
	 * is not allowed in the mac vlan table.
	 */
	ret = FUNC5(vport, &req, &desc, false);
	if (ret == -ENOENT) {
		if (!FUNC4(vport)) {
			ret = FUNC3(vport, &req, NULL);
			if (!ret)
				FUNC7(vport, false);
			return ret;
		}

		FUNC1(&hdev->pdev->dev, "UC MAC table full(%u)\n",
			hdev->priv_umv_size);

		return -ENOSPC;
	}

	/* check if we just hit the duplicate */
	if (!ret) {
		FUNC2(&hdev->pdev->dev, "VF %d mac(%pM) exists\n",
			 vport->vport_id, addr);
		return 0;
	}

	FUNC1(&hdev->pdev->dev,
		"PF failed to add unicast entry(%pM) in the MAC table\n",
		addr);

	return ret;
}