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
struct hclge_desc {scalar_t__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int HCLGE_GET_DFX_REG_TYPE_CNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct hclge_dev*,struct hclge_desc*) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev, int offset)
{
#define HCLGE_GET_DFX_REG_TYPE_CNT	4

	struct hclge_desc desc[HCLGE_GET_DFX_REG_TYPE_CNT];
	int entries_per_desc;
	int index;
	int ret;

	ret = FUNC2(hdev, desc);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"get dfx bdnum fail, ret = %d\n", ret);
		return ret;
	}

	entries_per_desc = FUNC0(desc[0].data);
	index = offset % entries_per_desc;
	return (int)desc[offset / entries_per_desc].data[index];
}