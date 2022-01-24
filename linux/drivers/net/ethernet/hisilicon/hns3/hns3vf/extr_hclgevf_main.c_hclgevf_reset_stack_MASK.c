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
struct hclgevf_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNAE3_INIT_CLIENT ; 
 int /*<<< orphan*/  HNAE3_RESTORE_CLIENT ; 
 int /*<<< orphan*/  HNAE3_UNINIT_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hclgevf_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hclgevf_dev*,int) ; 
 int FUNC3 (struct hclgevf_dev*) ; 

__attribute__((used)) static int FUNC4(struct hclgevf_dev *hdev)
{
	int ret;

	/* uninitialize the nic client */
	ret = FUNC1(hdev, HNAE3_UNINIT_CLIENT);
	if (ret)
		return ret;

	/* re-initialize the hclge device */
	ret = FUNC3(hdev);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"hclge device re-init failed, VF is disabled!\n");
		return ret;
	}

	/* bring up the nic client again */
	ret = FUNC1(hdev, HNAE3_INIT_CLIENT);
	if (ret)
		return ret;

	ret = FUNC1(hdev, HNAE3_RESTORE_CLIENT);
	if (ret)
		return ret;

	/* clear handshake status with IMP */
	FUNC2(hdev, false);

	return 0;
}