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
struct mtk_mdp_comp {scalar_t__ larb_dev; int /*<<< orphan*/ * clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct device *dev, struct mtk_mdp_comp *comp)
{
	int i;

	for (i = 0; i < FUNC0(comp->clk); i++) {
		if (FUNC1(comp->clk[i]))
			continue;
		FUNC2(comp->clk[i]);
	}

	if (comp->larb_dev)
		FUNC3(comp->larb_dev);
}