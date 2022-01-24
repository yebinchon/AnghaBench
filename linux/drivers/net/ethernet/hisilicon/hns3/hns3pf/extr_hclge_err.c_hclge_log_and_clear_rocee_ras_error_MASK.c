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
struct hclge_dev {int /*<<< orphan*/  hw; TYPE_1__* pdev; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct device {int dummy; } ;
typedef  enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_QUERY_CLEAR_ROCEE_RAS_INT ; 
 unsigned int HCLGE_ROCEE_AXI_ERR_INT_MASK ; 
 unsigned int HCLGE_ROCEE_BERR_INT_MASK ; 
 unsigned int HCLGE_ROCEE_ECC_INT_MASK ; 
 unsigned int HCLGE_ROCEE_OVF_INT_MASK ; 
 unsigned int HCLGE_ROCEE_RERR_INT_MASK ; 
 int HNAE3_FUNC_RESET ; 
 int HNAE3_GLOBAL_RESET ; 
 int HNAE3_NONE_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct hclge_dev*,struct hclge_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int FUNC4 (struct hclge_dev*) ; 
 int FUNC5 (struct hclge_dev*) ; 
 int FUNC6 (struct hclge_dev*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum hnae3_reset_type
FUNC8(struct hclge_dev *hdev)
{
	enum hnae3_reset_type reset_type = HNAE3_NONE_RESET;
	struct device *dev = &hdev->pdev->dev;
	struct hclge_desc desc[2];
	unsigned int status;
	int ret;

	/* read RAS error interrupt status */
	ret = FUNC1(hdev, &desc[0],
				    HCLGE_QUERY_CLEAR_ROCEE_RAS_INT, 0);
	if (ret) {
		FUNC0(dev, "failed(%d) to query ROCEE RAS INT SRC\n", ret);
		/* reset everything for now */
		return HNAE3_GLOBAL_RESET;
	}

	status = FUNC7(desc[0].data[0]);

	if (status & HCLGE_ROCEE_AXI_ERR_INT_MASK) {
		if (status & HCLGE_ROCEE_RERR_INT_MASK)
			FUNC0(dev, "ROCEE RAS AXI rresp error\n");

		if (status & HCLGE_ROCEE_BERR_INT_MASK)
			FUNC0(dev, "ROCEE RAS AXI bresp error\n");

		reset_type = HNAE3_FUNC_RESET;

		ret = FUNC4(hdev);
		if (ret)
			return HNAE3_GLOBAL_RESET;
	}

	if (status & HCLGE_ROCEE_ECC_INT_MASK) {
		FUNC0(dev, "ROCEE RAS 2bit ECC error\n");
		reset_type = HNAE3_GLOBAL_RESET;

		ret = FUNC5(hdev);
		if (ret)
			return HNAE3_GLOBAL_RESET;
	}

	if (status & HCLGE_ROCEE_OVF_INT_MASK) {
		ret = FUNC6(hdev);
		if (ret) {
			FUNC0(dev, "failed(%d) to process ovf error\n", ret);
			/* reset everything for now */
			return HNAE3_GLOBAL_RESET;
		}
	}

	/* clear error status */
	FUNC2(&desc[0], false);
	ret = FUNC3(&hdev->hw, &desc[0], 1);
	if (ret) {
		FUNC0(dev, "failed(%d) to clear ROCEE RAS error\n", ret);
		/* reset everything for now */
		return HNAE3_GLOBAL_RESET;
	}

	return reset_type;
}