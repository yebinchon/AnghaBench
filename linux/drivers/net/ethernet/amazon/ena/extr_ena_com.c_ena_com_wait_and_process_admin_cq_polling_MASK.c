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
struct ena_comp_ctx {scalar_t__ status; int /*<<< orphan*/  comp_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  aborted_cmd; int /*<<< orphan*/  no_completion; } ;
struct ena_com_admin_queue {int running_state; int /*<<< orphan*/  q_lock; TYPE_1__ stats; int /*<<< orphan*/  completion_timeout; } ;

/* Variables and functions */
 scalar_t__ ENA_CMD_ABORTED ; 
 scalar_t__ ENA_CMD_COMPLETED ; 
 scalar_t__ ENA_CMD_SUBMITTED ; 
 int /*<<< orphan*/  ENA_POLL_MS ; 
 int ENODEV ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_com_admin_queue*,struct ena_comp_ctx*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_admin_queue*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ena_comp_ctx *comp_ctx,
						     struct ena_com_admin_queue *admin_queue)
{
	unsigned long flags = 0;
	unsigned long timeout;
	int ret;

	timeout = jiffies + FUNC10(admin_queue->completion_timeout);

	while (1) {
		FUNC6(&admin_queue->q_lock, flags);
		FUNC3(admin_queue);
		FUNC7(&admin_queue->q_lock, flags);

		if (comp_ctx->status != ENA_CMD_SUBMITTED)
			break;

		if (FUNC8(timeout)) {
			FUNC5("Wait for completion (polling) timeout\n");
			/* ENA didn't have any completion */
			FUNC6(&admin_queue->q_lock, flags);
			admin_queue->stats.no_completion++;
			admin_queue->running_state = false;
			FUNC7(&admin_queue->q_lock, flags);

			ret = -ETIME;
			goto err;
		}

		FUNC4(ENA_POLL_MS);
	}

	if (FUNC9(comp_ctx->status == ENA_CMD_ABORTED)) {
		FUNC5("Command was aborted\n");
		FUNC6(&admin_queue->q_lock, flags);
		admin_queue->stats.aborted_cmd++;
		FUNC7(&admin_queue->q_lock, flags);
		ret = -ENODEV;
		goto err;
	}

	FUNC0(comp_ctx->status != ENA_CMD_COMPLETED, "Invalid comp status %d\n",
	     comp_ctx->status);

	ret = FUNC2(comp_ctx->comp_status);
err:
	FUNC1(admin_queue, comp_ctx);
	return ret;
}