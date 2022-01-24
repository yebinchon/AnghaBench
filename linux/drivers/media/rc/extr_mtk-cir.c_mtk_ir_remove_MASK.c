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
struct platform_device {int dummy; } ;
struct mtk_ir {int /*<<< orphan*/  clk; int /*<<< orphan*/  bus; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_IRINT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_ir*,int /*<<< orphan*/ ) ; 
 struct mtk_ir* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct mtk_ir *ir = FUNC2(pdev);

	/*
	 * Avoid contention between remove handler and
	 * IRQ handler so that disabling IR interrupt and
	 * waiting for pending IRQ handler to complete
	 */
	FUNC1(ir, MTK_IRINT_EN);
	FUNC3(ir->irq);

	FUNC0(ir->bus);
	FUNC0(ir->clk);

	return 0;
}