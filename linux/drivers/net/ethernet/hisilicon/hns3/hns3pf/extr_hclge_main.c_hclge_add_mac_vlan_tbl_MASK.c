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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_mac_vlan_tbl_entry_cmd {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/  retval; int /*<<< orphan*/ * data; int /*<<< orphan*/  flag; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CMD_FLAG_NEXT ; 
 int /*<<< orphan*/  HCLGE_MAC_VLAN_ADD ; 
 int /*<<< orphan*/  HCLGE_OPC_MAC_VLAN_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hclge_vport*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct hclge_mac_vlan_tbl_entry_cmd*,int) ; 

__attribute__((used)) static int FUNC9(struct hclge_vport *vport,
				  struct hclge_mac_vlan_tbl_entry_cmd *req,
				  struct hclge_desc *mc_desc)
{
	struct hclge_dev *hdev = vport->back;
	int cfg_status;
	u8 resp_code;
	u16 retval;
	int ret;

	if (!mc_desc) {
		struct hclge_desc desc;

		FUNC4(&desc,
					   HCLGE_OPC_MAC_VLAN_ADD,
					   false);
		FUNC8(desc.data, req,
		       sizeof(struct hclge_mac_vlan_tbl_entry_cmd));
		ret = FUNC3(&hdev->hw, &desc, 1);
		resp_code = (FUNC7(desc.data[0]) >> 8) & 0xff;
		retval = FUNC6(desc.retval);

		cfg_status = FUNC5(vport, retval,
							   resp_code,
							   HCLGE_MAC_VLAN_ADD);
	} else {
		FUNC2(&mc_desc[0], false);
		mc_desc[0].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
		FUNC2(&mc_desc[1], false);
		mc_desc[1].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
		FUNC2(&mc_desc[2], false);
		mc_desc[2].flag &= FUNC0(~HCLGE_CMD_FLAG_NEXT);
		FUNC8(mc_desc[0].data, req,
		       sizeof(struct hclge_mac_vlan_tbl_entry_cmd));
		ret = FUNC3(&hdev->hw, mc_desc, 3);
		resp_code = (FUNC7(mc_desc[0].data[0]) >> 8) & 0xff;
		retval = FUNC6(mc_desc[0].retval);

		cfg_status = FUNC5(vport, retval,
							   resp_code,
							   HCLGE_MAC_VLAN_ADD);
	}

	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"add mac addr failed for cmd_send, ret =%d.\n",
			ret);
		return ret;
	}

	return cfg_status;
}