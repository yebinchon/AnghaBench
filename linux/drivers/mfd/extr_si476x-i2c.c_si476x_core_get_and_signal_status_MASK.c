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
struct si476x_core {int /*<<< orphan*/  tuning; int /*<<< orphan*/  stc; TYPE_1__* client; int /*<<< orphan*/  command; int /*<<< orphan*/  cts; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int SI476X_CTS ; 
 int SI476X_FM_RDS_INT ; 
 int SI476X_STC_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct si476x_core*) ; 
 int /*<<< orphan*/  FUNC4 (struct si476x_core*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct si476x_core *core)
{
	int status = FUNC3(core);
	if (status < 0) {
		FUNC2(&core->client->dev, "Failed to get status\n");
		return;
	}

	if (status & SI476X_CTS) {
		/* Unfortunately completions could not be used for
		 * signalling CTS since this flag cannot be cleared
		 * in status byte, and therefore once it becomes true
		 * multiple calls to 'complete' would cause the
		 * commands following the current one to be completed
		 * before they actually are */
		FUNC1(&core->client->dev, "[interrupt] CTSINT\n");
		FUNC0(&core->cts, 1);
		FUNC5(&core->command);
	}

	if (status & SI476X_FM_RDS_INT) {
		FUNC1(&core->client->dev, "[interrupt] RDSINT\n");
		FUNC4(core);
	}

	if (status & SI476X_STC_INT) {
		FUNC1(&core->client->dev, "[interrupt] STCINT\n");
		FUNC0(&core->stc, 1);
		FUNC5(&core->tuning);
	}
}