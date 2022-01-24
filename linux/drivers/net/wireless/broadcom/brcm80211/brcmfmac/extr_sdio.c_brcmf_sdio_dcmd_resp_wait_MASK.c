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
typedef  int /*<<< orphan*/  uint ;
struct brcmf_sdio {int /*<<< orphan*/  dcmd_resp_wait; } ;

/* Variables and functions */
 int DCMD_RESP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC6(struct brcmf_sdio *bus, uint *condition,
				     bool *pending)
{
	FUNC0(wait, current);
	int timeout = DCMD_RESP_TIMEOUT;

	/* Wait until control frame is available */
	FUNC1(&bus->dcmd_resp_wait, &wait);
	FUNC4(TASK_INTERRUPTIBLE);

	while (!(*condition) && (!FUNC5(current) && timeout))
		timeout = FUNC3(timeout);

	if (FUNC5(current))
		*pending = true;

	FUNC4(TASK_RUNNING);
	FUNC2(&bus->dcmd_resp_wait, &wait);

	return timeout;
}