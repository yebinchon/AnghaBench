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
struct mtk_mdp_comp {int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/ * clk; scalar_t__ larb_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC4 (scalar_t__) ; 

void FUNC5(struct device *dev, struct mtk_mdp_comp *comp)
{
	int i, err;

	if (comp->larb_dev) {
		err = FUNC4(comp->larb_dev);
		if (err)
			FUNC3(dev,
				"failed to get larb, err %d. type:%d id:%d\n",
				err, comp->type, comp->id);
	}

	for (i = 0; i < FUNC0(comp->clk); i++) {
		if (FUNC1(comp->clk[i]))
			continue;
		err = FUNC2(comp->clk[i]);
		if (err)
			FUNC3(dev,
			"failed to enable clock, err %d. type:%d id:%d i:%d\n",
				err, comp->type, comp->id, i);
	}
}