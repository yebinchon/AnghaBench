#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* next; } ;
struct lkdtm_list {TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  test_head ; 

void FUNC5(void)
{
	FUNC0(test_head);
	struct lkdtm_list item;
	void *target[2] = { };
	void *redirection = &target;

	FUNC1(&item.node, &test_head);

	FUNC4("attempting good list removal\n");
	FUNC2(&item.node);

	FUNC4("attempting corrupted list removal\n");
	FUNC1(&item.node, &test_head);

	/* As with the list_add() test above, this corrupts "next". */
	item.node.next = redirection;
	FUNC2(&item.node);

	if (target[0] == NULL && target[1] == NULL)
		FUNC3("Overwrite did not happen, but no BUG?!\n");
	else
		FUNC3("list_del() corruption not detected!\n");
}