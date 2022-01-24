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
typedef  scalar_t__ u32 ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HCLGE_32_BIT_DESC_NODATA_LEN ; 
 int HCLGE_32_BIT_REG_RTN_DATANUM ; 
 int /*<<< orphan*/  HCLGE_OPC_QUERY_32_BIT_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 struct hclge_desc* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hclge_dev *hdev, u32 regs_num,
				 void *data)
{
#define HCLGE_32_BIT_REG_RTN_DATANUM 8
#define HCLGE_32_BIT_DESC_NODATA_LEN 2

	struct hclge_desc *desc;
	u32 *reg_val = data;
	__le32 *desc_data;
	int nodata_num;
	int cmd_num;
	int i, k, n;
	int ret;

	if (regs_num == 0)
		return 0;

	nodata_num = HCLGE_32_BIT_DESC_NODATA_LEN;
	cmd_num = FUNC0(regs_num + nodata_num,
			       HCLGE_32_BIT_REG_RTN_DATANUM);
	desc = FUNC4(cmd_num, sizeof(struct hclge_desc), GFP_KERNEL);
	if (!desc)
		return -ENOMEM;

	FUNC3(&desc[0], HCLGE_OPC_QUERY_32_BIT_REG, true);
	ret = FUNC2(&hdev->hw, desc, cmd_num);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"Query 32 bit register cmd failed, ret = %d.\n", ret);
		FUNC5(desc);
		return ret;
	}

	for (i = 0; i < cmd_num; i++) {
		if (i == 0) {
			desc_data = (__le32 *)(&desc[i].data[0]);
			n = HCLGE_32_BIT_REG_RTN_DATANUM - nodata_num;
		} else {
			desc_data = (__le32 *)(&desc[i]);
			n = HCLGE_32_BIT_REG_RTN_DATANUM;
		}
		for (k = 0; k < n; k++) {
			*reg_val++ = FUNC6(*desc_data++);

			regs_num--;
			if (!regs_num)
				break;
		}
	}

	FUNC5(desc);
	return 0;
}