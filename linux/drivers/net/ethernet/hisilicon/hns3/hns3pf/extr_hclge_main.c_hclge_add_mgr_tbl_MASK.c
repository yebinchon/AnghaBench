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
struct hclge_mac_mgr_tbl_entry_cmd {int dummy; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/  retval; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_MAC_ETHTYPE_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hclge_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct hclge_mac_mgr_tbl_entry_cmd const*,int) ; 

__attribute__((used)) static int FUNC7(struct hclge_dev *hdev,
			     const struct hclge_mac_mgr_tbl_entry_cmd *req)
{
	struct hclge_desc desc;
	u8 resp_code;
	u16 retval;
	int ret;

	FUNC2(&desc, HCLGE_OPC_MAC_ETHTYPE_ADD, false);
	FUNC6(desc.data, req, sizeof(struct hclge_mac_mgr_tbl_entry_cmd));

	ret = FUNC1(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"add mac ethertype failed for cmd_send, ret =%d.\n",
			ret);
		return ret;
	}

	resp_code = (FUNC5(desc.data[0]) >> 8) & 0xff;
	retval = FUNC4(desc.retval);

	return FUNC3(hdev, retval, resp_code);
}