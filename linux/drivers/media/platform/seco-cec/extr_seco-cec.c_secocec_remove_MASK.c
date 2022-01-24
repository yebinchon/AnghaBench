#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct secocec_data {int /*<<< orphan*/  cec_adap; int /*<<< orphan*/  notifier; scalar_t__ ir; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRA_SMB_BASE_ADDR ; 
 int /*<<< orphan*/  SECOCEC_ENABLE_REG_1 ; 
 int SECOCEC_ENABLE_REG_1_IR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct secocec_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct secocec_data *secocec = FUNC3(pdev);
	u16 val;

	if (secocec->ir) {
		FUNC5(SECOCEC_ENABLE_REG_1, &val);

		FUNC6(SECOCEC_ENABLE_REG_1, val & ~SECOCEC_ENABLE_REG_1_IR);

		FUNC2(&pdev->dev, "IR disabled");
	}
	FUNC0(secocec->notifier);
	FUNC1(secocec->cec_adap);

	FUNC4(BRA_SMB_BASE_ADDR, 7);

	FUNC2(&pdev->dev, "CEC device removed");

	return 0;
}