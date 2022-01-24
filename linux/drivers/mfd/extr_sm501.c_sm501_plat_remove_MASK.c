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
struct sm501_devdata {int /*<<< orphan*/  regs_claim; int /*<<< orphan*/  regs; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sm501_devdata* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sm501_devdata*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct sm501_devdata *sm = FUNC2(dev);

	FUNC4(sm);
	FUNC0(sm->regs);

	FUNC3(sm->regs_claim);
	FUNC1(sm->regs_claim);

	return 0;
}