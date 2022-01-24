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
struct emac_instance {struct device_node** blist; } ;
struct emac_depentry {scalar_t__ phandle; int /*<<< orphan*/ * drvdata; int /*<<< orphan*/ * ofdev; int /*<<< orphan*/ * node; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EMAC_DEP_COUNT ; 
 int EMAC_DEP_PREV_IDX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct emac_instance *dev,
			   struct emac_depentry *deps)
{
	int i, there = 0;
	struct device_node *np;

	for (i = 0; i < EMAC_DEP_COUNT; i++) {
		/* no dependency on that item, allright */
		if (deps[i].phandle == 0) {
			there++;
			continue;
		}
		/* special case for blist as the dependency might go away */
		if (i == EMAC_DEP_PREV_IDX) {
			np = *(dev->blist - 1);
			if (np == NULL) {
				deps[i].phandle = 0;
				there++;
				continue;
			}
			if (deps[i].node == NULL)
				deps[i].node = FUNC2(np);
		}
		if (deps[i].node == NULL)
			deps[i].node = FUNC1(deps[i].phandle);
		if (deps[i].node == NULL)
			continue;
		if (deps[i].ofdev == NULL)
			deps[i].ofdev = FUNC0(deps[i].node);
		if (deps[i].ofdev == NULL)
			continue;
		if (deps[i].drvdata == NULL)
			deps[i].drvdata = FUNC3(deps[i].ofdev);
		if (deps[i].drvdata != NULL)
			there++;
	}
	return there == EMAC_DEP_COUNT;
}