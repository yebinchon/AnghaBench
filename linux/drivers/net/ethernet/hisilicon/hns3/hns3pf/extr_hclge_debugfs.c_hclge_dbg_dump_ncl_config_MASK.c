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
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HCLGE_CMD_NCL_CONFIG_BD_NUM ; 
 int HCLGE_MAX_NCL_CONFIG_LENGTH ; 
 int HCLGE_MAX_NCL_CONFIG_OFFSET ; 
 int /*<<< orphan*/  HCLGE_OPC_QUERY_NCL_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct hclge_dev*,struct hclge_desc*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_dev*,struct hclge_desc*,int*,int*) ; 
 int FUNC4 (char const*,char*,int*,int*) ; 

__attribute__((used)) static void FUNC5(struct hclge_dev *hdev,
				      const char *cmd_buf)
{
#define HCLGE_MAX_NCL_CONFIG_OFFSET	4096
#define HCLGE_MAX_NCL_CONFIG_LENGTH	(20 + 24 * 4)

	struct hclge_desc desc[HCLGE_CMD_NCL_CONFIG_BD_NUM];
	int bd_num = HCLGE_CMD_NCL_CONFIG_BD_NUM;
	int offset;
	int length;
	int data0;
	int ret;

	ret = FUNC4(cmd_buf, "%x %x", &offset, &length);
	if (ret != 2 || offset >= HCLGE_MAX_NCL_CONFIG_OFFSET ||
	    length > HCLGE_MAX_NCL_CONFIG_OFFSET - offset) {
		FUNC0(&hdev->pdev->dev, "Invalid offset or length.\n");
		return;
	}
	if (offset < 0 || length <= 0) {
		FUNC0(&hdev->pdev->dev, "Non-positive offset or length.\n");
		return;
	}

	FUNC1(&hdev->pdev->dev, "offset |    data\n");

	while (length > 0) {
		data0 = offset;
		if (length >= HCLGE_MAX_NCL_CONFIG_LENGTH)
			data0 |= HCLGE_MAX_NCL_CONFIG_LENGTH << 16;
		else
			data0 |= length << 16;
		ret = FUNC2(hdev, desc, data0, bd_num,
					 HCLGE_OPC_QUERY_NCL_CONFIG);
		if (ret)
			return;

		FUNC3(hdev, desc, &offset, &length);
	}
}