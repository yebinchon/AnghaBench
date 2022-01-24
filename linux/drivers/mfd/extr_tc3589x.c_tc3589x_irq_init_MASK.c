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
struct tc3589x {int /*<<< orphan*/  dev; int /*<<< orphan*/  domain; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  TC3589x_NR_INTERNAL_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tc3589x*) ; 
 int /*<<< orphan*/  tc3589x_irq_ops ; 

__attribute__((used)) static int FUNC2(struct tc3589x *tc3589x, struct device_node *np)
{
	tc3589x->domain = FUNC1(
		np, TC3589x_NR_INTERNAL_IRQS, 0,
		&tc3589x_irq_ops, tc3589x);

	if (!tc3589x->domain) {
		FUNC0(tc3589x->dev, "Failed to create irqdomain\n");
		return -ENOSYS;
	}

	return 0;
}