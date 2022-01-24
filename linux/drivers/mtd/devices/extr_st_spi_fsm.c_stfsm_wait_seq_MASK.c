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
struct stfsm {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STFSM_MAX_WAIT_SEQ_MS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct stfsm*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct stfsm *fsm)
{
	unsigned long deadline;
	int timeout = 0;

	deadline = jiffies + FUNC2(STFSM_MAX_WAIT_SEQ_MS);

	while (!timeout) {
		if (FUNC4(jiffies, deadline))
			timeout = 1;

		if (FUNC3(fsm))
			return;

		FUNC0();
	}

	FUNC1(fsm->dev, "timeout on sequence completion\n");
}