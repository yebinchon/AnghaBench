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
struct hclge_pf_rst_sync_cmd {scalar_t__ all_vf_ready; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ETIME ; 
 int /*<<< orphan*/  HCLGE_OPC_QUERY_VF_RST_RDY ; 
 int /*<<< orphan*/  HCLGE_PF_RESET_SYNC_CNT ; 
 int /*<<< orphan*/  HCLGE_PF_RESET_SYNC_TIME ; 
 int /*<<< orphan*/  HCLGE_RESET_SYNC_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_desc*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev)
{
	struct hclge_pf_rst_sync_cmd *req;
	struct hclge_desc desc;
	int cnt = 0;
	int ret;

	req = (struct hclge_pf_rst_sync_cmd *)desc.data;
	FUNC3(&desc, HCLGE_OPC_QUERY_VF_RST_RDY, true);

	do {
		ret = FUNC2(&hdev->hw, &desc, 1);
		/* for compatible with old firmware, wait
		 * 100 ms for VF to stop IO
		 */
		if (ret == -EOPNOTSUPP) {
			FUNC4(HCLGE_RESET_SYNC_TIME);
			return 0;
		} else if (ret) {
			FUNC0(&hdev->pdev->dev, "sync with VF fail %d!\n",
				ret);
			return ret;
		} else if (req->all_vf_ready) {
			return 0;
		}
		FUNC4(HCLGE_PF_RESET_SYNC_TIME);
		FUNC1(&desc, true);
	} while (cnt++ < HCLGE_PF_RESET_SYNC_CNT);

	FUNC0(&hdev->pdev->dev, "sync with VF timeout!\n");
	return -ETIME;
}