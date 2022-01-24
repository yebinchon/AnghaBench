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
struct hclgevf_dev {TYPE_1__* pdev; int /*<<< orphan*/  flr_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HNAE3_FLR_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct hclgevf_dev *hdev,
				    unsigned long delay_us,
				    unsigned long wait_cnt)
{
	unsigned long cnt = 0;

	while (!FUNC1(HNAE3_FLR_DONE, &hdev->flr_state) &&
	       cnt++ < wait_cnt)
		FUNC2(delay_us, delay_us * 2);

	if (!FUNC1(HNAE3_FLR_DONE, &hdev->flr_state)) {
		FUNC0(&hdev->pdev->dev,
			"flr wait timeout\n");
		return -ETIMEDOUT;
	}

	return 0;
}