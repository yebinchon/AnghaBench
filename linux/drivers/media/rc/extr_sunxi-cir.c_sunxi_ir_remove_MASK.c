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
struct sunxi_ir {int /*<<< orphan*/  rc; int /*<<< orphan*/  ir_lock; scalar_t__ base; int /*<<< orphan*/  rst; int /*<<< orphan*/  apb_clk; int /*<<< orphan*/  clk; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_RXSTA_CLEARALL ; 
 scalar_t__ SUNXI_IR_CTL_REG ; 
 scalar_t__ SUNXI_IR_RXINT_REG ; 
 scalar_t__ SUNXI_IR_RXSTA_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sunxi_ir* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	unsigned long flags;
	struct sunxi_ir *ir = FUNC1(pdev);

	FUNC0(ir->clk);
	FUNC0(ir->apb_clk);
	FUNC3(ir->rst);

	FUNC4(&ir->ir_lock, flags);
	/* disable IR IRQ */
	FUNC6(0, ir->base + SUNXI_IR_RXINT_REG);
	/* clear All Rx Interrupt Status */
	FUNC6(REG_RXSTA_CLEARALL, ir->base + SUNXI_IR_RXSTA_REG);
	/* disable IR */
	FUNC6(0, ir->base + SUNXI_IR_CTL_REG);
	FUNC5(&ir->ir_lock, flags);

	FUNC2(ir->rc);
	return 0;
}