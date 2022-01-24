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
struct sram_dev {scalar_t__ clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  pool; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct sram_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sram_dev*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sram_dev *sram = FUNC4(pdev);

	FUNC5(sram);

	if (FUNC2(sram->pool) < FUNC3(sram->pool))
		FUNC1(sram->dev, "removed while SRAM allocated\n");

	if (sram->clk)
		FUNC0(sram->clk);

	return 0;
}