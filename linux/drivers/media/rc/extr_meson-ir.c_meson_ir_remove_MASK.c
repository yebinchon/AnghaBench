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
struct meson_ir {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IR_DEC_REG1 ; 
 int /*<<< orphan*/  REG1_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct meson_ir*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct meson_ir* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct meson_ir *ir = FUNC1(pdev);
	unsigned long flags;

	/* Disable the decoder */
	FUNC2(&ir->lock, flags);
	FUNC0(ir, IR_DEC_REG1, REG1_ENABLE, 0);
	FUNC3(&ir->lock, flags);

	return 0;
}