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
typedef  int /*<<< orphan*/  refcount_t ;

/* Variables and functions */
#define  REFCOUNT_MAX 129 
#define  REFCOUNT_SATURATED 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(refcount_t *ref, int start)
{
	/*
	 * CONFIG_REFCOUNT_FULL refuses to move a refcount at all on an
	 * over-sub, so we have to track our starting position instead of
	 * looking only at zero-pinning.
	 */
	if (FUNC3(ref) == start) {
		FUNC2("Still at %d: refcount_inc/add() must not inc-from-0\n",
			start);
		return;
	}

	switch (FUNC3(ref)) {
	case REFCOUNT_SATURATED:
		FUNC1("Negative detected: saturated\n");
		break;
	case REFCOUNT_MAX:
		FUNC2("Negative detected: unsafely reset to max\n");
		break;
	default:
		FUNC0("Fail: refcount went crazy: %d\n", FUNC3(ref));
	}
}