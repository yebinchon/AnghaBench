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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  hw_breakpoint_test ; 
 scalar_t__ hwbreaks_ok ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  sw_breakpoint_test ; 
 scalar_t__ test_complete ; 
 TYPE_1__ ts ; 

__attribute__((used)) static void FUNC4(int is_hw_breakpoint)
{
	test_complete = 0;
	FUNC1();
	if (is_hw_breakpoint) {
		ts.tst = hw_breakpoint_test;
		ts.name = "hw_breakpoint_test";
	} else {
		ts.tst = sw_breakpoint_test;
		ts.name = "sw_breakpoint_test";
	}
	/* Activate test with initial breakpoint */
	FUNC2();
	/* run code with the break point in it */
	FUNC3();
	FUNC2();

	if (test_complete)
		return;

	FUNC0("kgdbts: ERROR %s test failed\n", ts.name);
	if (is_hw_breakpoint)
		hwbreaks_ok = 0;
}