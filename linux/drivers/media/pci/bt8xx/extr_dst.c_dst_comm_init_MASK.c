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
struct dst_state {int type_flags; } ;

/* Variables and functions */
 int DST_TYPE_HAS_FW_1 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct dst_state*) ; 

int FUNC5(struct dst_state *state)
{
	FUNC0(2, "Initializing DST.\n");
	if ((FUNC1(state)) < 0) {
		FUNC3("PIO Enable Failed\n");
		return -1;
	}
	if ((FUNC4(state)) < 0) {
		FUNC3("RDC 8820 State RESET Failed.\n");
		return -1;
	}
	if (state->type_flags & DST_TYPE_HAS_FW_1)
		FUNC2(100);
	else
		FUNC2(5);

	return 0;
}