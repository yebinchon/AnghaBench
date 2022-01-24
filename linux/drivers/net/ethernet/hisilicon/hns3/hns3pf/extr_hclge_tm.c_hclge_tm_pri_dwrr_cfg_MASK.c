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
struct hclge_dev {scalar_t__ tx_sch_mode; int /*<<< orphan*/  fw_version; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ HCLGE_FLAG_TC_BASE_SCH_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hclge_dev*) ; 
 int FUNC2 (struct hclge_dev*) ; 
 int FUNC3 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev)
{
	int ret;

	if (hdev->tx_sch_mode == HCLGE_FLAG_TC_BASE_SCH_MODE) {
		ret = FUNC2(hdev);
		if (ret)
			return ret;

		if (!FUNC4(hdev))
			return 0;

		ret = FUNC1(hdev);
		if (ret == -EOPNOTSUPP) {
			FUNC0(&hdev->pdev->dev,
				 "fw %08x does't support ets tc weight cmd\n",
				 hdev->fw_version);
			ret = 0;
		}

		return ret;
	} else {
		ret = FUNC3(hdev);
		if (ret)
			return ret;
	}

	return 0;
}