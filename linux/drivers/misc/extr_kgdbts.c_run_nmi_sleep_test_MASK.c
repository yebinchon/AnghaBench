#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int /*<<< orphan*/  tst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  nmi_sleep_test ; 
 int test_complete ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ ts ; 

__attribute__((used)) static void FUNC7(int nmi_sleep)
{
	unsigned long flags;

	FUNC1();
	ts.tst = nmi_sleep_test;
	ts.name = "nmi_sleep_test";
	/* Activate test with initial breakpoint */
	FUNC2();
	FUNC4(flags);
	FUNC5(nmi_sleep*1000);
	FUNC6();
	FUNC3(flags);
	if (test_complete != 2)
		FUNC0("kgdbts: ERROR nmi_test did not hit nmi\n");
	FUNC2();
	if (test_complete == 1)
		return;

	FUNC0("kgdbts: ERROR %s test failed\n", ts.name);
}