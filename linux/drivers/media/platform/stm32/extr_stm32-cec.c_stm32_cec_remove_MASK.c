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
struct stm32_cec {int /*<<< orphan*/  adap; int /*<<< orphan*/  clk_hdmi_cec; int /*<<< orphan*/  clk_cec; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct stm32_cec* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct stm32_cec *cec = FUNC2(pdev);

	FUNC1(cec->clk_cec);
	FUNC1(cec->clk_hdmi_cec);

	FUNC0(cec->adap);

	return 0;
}