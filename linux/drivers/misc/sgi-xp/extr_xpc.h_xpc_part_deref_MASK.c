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
struct xpc_partition {scalar_t__ setup_state; int /*<<< orphan*/  teardown_wq; int /*<<< orphan*/  references; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XPC_P_SS_WTEARDOWN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(struct xpc_partition *part)
{
	s32 refs = FUNC1(&part->references);

	FUNC0(refs < 0);
	if (refs == 0 && part->setup_state == XPC_P_SS_WTEARDOWN)
		FUNC2(&part->teardown_wq);
}