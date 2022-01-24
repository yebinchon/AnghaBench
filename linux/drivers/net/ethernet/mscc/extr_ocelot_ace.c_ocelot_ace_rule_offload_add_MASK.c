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
struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int /*<<< orphan*/  ocelot; } ;

/* Variables and functions */
 TYPE_2__* acl_block ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ocelot_ace_rule*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct ocelot_ace_rule*) ; 
 int FUNC2 (TYPE_2__*,struct ocelot_ace_rule*) ; 
 struct ocelot_ace_rule* FUNC3 (TYPE_2__*,int) ; 

int FUNC4(struct ocelot_ace_rule *rule)
{
	struct ocelot_ace_rule *ace;
	int i, index;

	/* Add rule to the linked list */
	FUNC1(acl_block, rule);

	/* Get the index of the inserted rule */
	index = FUNC2(acl_block, rule);

	/* Move down the rules to make place for the new rule */
	for (i = acl_block->count - 1; i > index; i--) {
		ace = FUNC3(acl_block, i);
		FUNC0(rule->port->ocelot, i, ace);
	}

	/* Now insert the new rule */
	FUNC0(rule->port->ocelot, index, rule);
	return 0;
}