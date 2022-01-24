#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lkdtm_list {int /*<<< orphan*/  node; } ;
struct TYPE_4__ {void* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ test_head ; 

void FUNC4(void)
{
	/*
	 * Initially, an empty list via LIST_HEAD:
	 *	test_head.next = &test_head
	 *	test_head.prev = &test_head
	 */
	FUNC0(test_head);
	struct lkdtm_list good, bad;
	void *target[2] = { };
	void *redirection = &target;

	FUNC3("attempting good list addition\n");

	/*
	 * Adding to the list performs these actions:
	 *	test_head.next->prev = &good.node
	 *	good.node.next = test_head.next
	 *	good.node.prev = test_head
	 *	test_head.next = good.node
	 */
	FUNC1(&good.node, &test_head);

	FUNC3("attempting corrupted list addition\n");
	/*
	 * In simulating this "write what where" primitive, the "what" is
	 * the address of &bad.node, and the "where" is the address held
	 * by "redirection".
	 */
	test_head.next = redirection;
	FUNC1(&bad.node, &test_head);

	if (target[0] == NULL && target[1] == NULL)
		FUNC2("Overwrite did not happen, but no BUG?!\n");
	else
		FUNC2("list_add() corruption not detected!\n");
}