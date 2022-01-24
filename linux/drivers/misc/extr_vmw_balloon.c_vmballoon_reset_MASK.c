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
struct vmballoon {int capabilities; int reset_required; int /*<<< orphan*/  conf_sem; } ;

/* Variables and functions */
 int VMW_BALLOON_BASIC_CMDS ; 
 int VMW_BALLOON_BATCHED_CMDS ; 
 int /*<<< orphan*/  VMW_BALLOON_CAPABILITIES ; 
 int /*<<< orphan*/  VMW_BALLOON_STAT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vmballoon*) ; 
 scalar_t__ FUNC4 (struct vmballoon*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmballoon*) ; 
 scalar_t__ FUNC6 (struct vmballoon*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmballoon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vmballoon*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vmballoon*) ; 
 int FUNC10 (struct vmballoon*) ; 

__attribute__((used)) static void FUNC11(struct vmballoon *b)
{
	int error;

	FUNC0(&b->conf_sem);

	FUNC9(b);

	/* free all pages, skipping monitor unlock */
	FUNC5(b);

	if (FUNC7(b, VMW_BALLOON_CAPABILITIES))
		goto unlock;

	if ((b->capabilities & VMW_BALLOON_BATCHED_CMDS) != 0) {
		if (FUNC4(b)) {
			/*
			 * We failed to initialize batching, inform the monitor
			 * about it by sending a null capability.
			 *
			 * The guest will retry in one second.
			 */
			FUNC7(b, 0);
			goto unlock;
		}
	} else if ((b->capabilities & VMW_BALLOON_BASIC_CMDS) != 0) {
		FUNC3(b);
	}

	FUNC8(b, VMW_BALLOON_STAT_RESET);
	b->reset_required = false;

	error = FUNC10(b);
	if (error)
		FUNC1("failed to initialize vmci doorbell\n");

	if (FUNC6(b))
		FUNC1("failed to send guest ID to the host\n");

unlock:
	FUNC2(&b->conf_sem);
}