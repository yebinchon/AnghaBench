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
typedef  int /*<<< orphan*/  u32 ;
struct vmci_subscription {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_SUCCESS ; 
 struct vmci_subscription* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_subscription*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  subscriber_mutex ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(u32 sub_id)
{
	struct vmci_subscription *s;

	FUNC3(&subscriber_mutex);
	s = FUNC0(sub_id);
	if (s)
		FUNC2(&s->node);
	FUNC4(&subscriber_mutex);

	if (!s)
		return VMCI_ERROR_NOT_FOUND;

	FUNC5();
	FUNC1(s);

	return VMCI_SUCCESS;
}