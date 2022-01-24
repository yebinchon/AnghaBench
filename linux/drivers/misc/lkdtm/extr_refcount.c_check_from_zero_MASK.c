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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(refcount_t *ref)
{
	switch (FUNC2(ref)) {
	case 0:
		FUNC0("Zero detected: stayed at zero\n");
		break;
	case REFCOUNT_SATURATED:
		FUNC0("Zero detected: saturated\n");
		break;
	case REFCOUNT_MAX:
		FUNC1("Zero detected: unsafely reset to max\n");
		break;
	default:
		FUNC0("Fail: zero not detected, incremented to %d\n",
			FUNC2(ref));
	}
}