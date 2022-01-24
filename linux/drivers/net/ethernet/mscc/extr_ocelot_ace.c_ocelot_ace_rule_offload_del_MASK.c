#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ocelot_ace_rule {TYPE_1__* port; } ;
typedef  int /*<<< orphan*/  del_ace ;
struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int /*<<< orphan*/  ocelot; } ;

/* Variables and functions */
 TYPE_2__* acl_block ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ocelot_ace_rule*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocelot_ace_rule*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct ocelot_ace_rule*) ; 
 int FUNC3 (TYPE_2__*,struct ocelot_ace_rule*) ; 
 struct ocelot_ace_rule* FUNC4 (TYPE_2__*,int) ; 

int FUNC5(struct ocelot_ace_rule *rule)
{
	struct ocelot_ace_rule del_ace;
	struct ocelot_ace_rule *ace;
	int i, index;

	FUNC1(&del_ace, 0, sizeof(del_ace));

	/* Gets index of the rule */
	index = FUNC3(acl_block, rule);

	/* Delete rule */
	FUNC2(acl_block, rule);

	/* Move up all the blocks over the deleted rule */
	for (i = index; i < acl_block->count; i++) {
		ace = FUNC4(acl_block, i);
		FUNC0(rule->port->ocelot, i, ace);
	}

	/* Now delete the last rule, because it is duplicated */
	FUNC0(rule->port->ocelot, acl_block->count, &del_ace);

	return 0;
}