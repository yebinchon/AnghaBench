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
struct r8152 {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct r8152 *tp)
{
	if (FUNC6(RTL8152_UNPLUG, &tp->flags)) {
		FUNC5(tp);
		return;
	}

	FUNC3(tp, false);
	FUNC4(tp, false);
	FUNC2(tp, false);
	FUNC0(tp, false);
	FUNC1(tp);
	FUNC0(tp, true);
}