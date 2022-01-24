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
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/  flag; int /*<<< orphan*/ * data; } ;
typedef  enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CMD_FLAG_NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_desc*,int,int) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev,
			      struct hclge_desc *desc_src,
			      int index, int bd_num,
			      enum hclge_opcode_type cmd)
{
	struct hclge_desc *desc = desc_src;
	int ret, i;

	FUNC4(desc, cmd, true);
	desc->data[0] = FUNC1(index);

	for (i = 1; i < bd_num; i++) {
		desc->flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
		desc++;
		FUNC4(desc, cmd, true);
	}

	ret = FUNC3(&hdev->hw, desc_src, bd_num);
	if (ret)
		FUNC2(&hdev->pdev->dev,
			"cmd(0x%x) send fail, ret = %d\n", cmd, ret);
	return ret;
}