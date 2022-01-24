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
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mac_vlan_tbl_entry_cmd {int /*<<< orphan*/  entry_type; } ;
struct hclge_dev {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  req ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HCLGE_MAC_VLAN_BIT0_EN_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_mac_vlan_tbl_entry_cmd*,unsigned char const*,int) ; 
 int FUNC2 (struct hclge_vport*,struct hclge_mac_vlan_tbl_entry_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_vport*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned char const*) ; 
 scalar_t__ FUNC6 (unsigned char const*) ; 
 scalar_t__ FUNC7 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct hclge_mac_vlan_tbl_entry_cmd*,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct hclge_vport *vport,
			    const unsigned char *addr)
{
	struct hclge_dev *hdev = vport->back;
	struct hclge_mac_vlan_tbl_entry_cmd req;
	int ret;

	/* mac addr check */
	if (FUNC7(addr) ||
	    FUNC5(addr) ||
	    FUNC6(addr)) {
		FUNC0(&hdev->pdev->dev, "Remove mac err! invalid mac:%pM.\n",
			addr);
		return -EINVAL;
	}

	FUNC8(&req, 0, sizeof(req));
	FUNC4(req.entry_type, HCLGE_MAC_VLAN_BIT0_EN_B, 0);
	FUNC1(&req, addr, false);
	ret = FUNC2(vport, &req);
	if (!ret)
		FUNC3(vport, true);

	return ret;
}