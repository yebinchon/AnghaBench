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
struct hclge_pf_rst_done_cmd {int /*<<< orphan*/  pf_rst_done; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HCLGE_OPC_PF_RST_DONE ; 
 int /*<<< orphan*/  HCLGE_PF_RESET_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev)
{
	struct hclge_pf_rst_done_cmd *req;
	struct hclge_desc desc;
	int ret;

	req = (struct hclge_pf_rst_done_cmd *)desc.data;
	FUNC3(&desc, HCLGE_OPC_PF_RST_DONE, false);
	req->pf_rst_done |= HCLGE_PF_RESET_DONE_BIT;

	ret = FUNC2(&hdev->hw, &desc, 1);
	/* To be compatible with the old firmware, which does not support
	 * command HCLGE_OPC_PF_RST_DONE, just print a warning and
	 * return success
	 */
	if (ret == -EOPNOTSUPP) {
		FUNC1(&hdev->pdev->dev,
			 "current firmware does not support command(0x%x)!\n",
			 HCLGE_OPC_PF_RST_DONE);
		return 0;
	} else if (ret) {
		FUNC0(&hdev->pdev->dev, "assert PF reset done fail %d!\n",
			ret);
	}

	return ret;
}