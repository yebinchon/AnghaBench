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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct asic3 {int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 size_t ASIC3_CLOCK_EX0 ; 
 size_t ASIC3_CLOCK_EX1 ; 
 size_t ASIC3_CLOCK_SD_BUS ; 
 size_t ASIC3_CLOCK_SD_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASIC3_SDHWCTRL_SUSPEND ; 
 int /*<<< orphan*/  SDCONF ; 
 int /*<<< orphan*/  SDHWCTRL ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct asic3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct asic3* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct asic3 *asic = FUNC3(pdev->dev.parent);

	/* Put in suspend mode */
	FUNC2(asic, FUNC0(SDHWCTRL, SDCONF),
			   ASIC3_SDHWCTRL_SUSPEND, 1);

	/* Disable clocks */
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_SD_HOST]);
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_SD_BUS]);
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_EX0]);
	FUNC1(asic, &asic->clocks[ASIC3_CLOCK_EX1]);
	return 0;
}