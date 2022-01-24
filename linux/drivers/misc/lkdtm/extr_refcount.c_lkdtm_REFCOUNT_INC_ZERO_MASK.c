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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
	refcount_t zero = FUNC0(0);

	FUNC3("attempting safe refcount_inc_not_zero() from zero\n");
	if (!FUNC5(&zero)) {
		FUNC3("Good: zero detected\n");
		if (FUNC6(&zero) == 0)
			FUNC3("Correctly stayed at zero\n");
		else
			FUNC2("Fail: refcount went past zero!\n");
	} else {
		FUNC2("Fail: Zero not detected!?\n");
	}

	FUNC3("attempting bad refcount_inc() from zero\n");
	FUNC4(&zero);

	FUNC1(&zero);
}