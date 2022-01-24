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
struct ena_comp_ctx {char* status; int /*<<< orphan*/  comp_status; int /*<<< orphan*/  cmd_opcode; int /*<<< orphan*/  wait_event; } ;
struct TYPE_2__ {int /*<<< orphan*/  no_completion; } ;
struct ena_com_admin_queue {int polling; int running_state; scalar_t__ auto_polling; int /*<<< orphan*/  q_lock; TYPE_1__ stats; int /*<<< orphan*/  completion_timeout; } ;

/* Variables and functions */
 char* ENA_CMD_COMPLETED ; 
 char* ENA_CMD_SUBMITTED ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct ena_com_admin_queue*,struct ena_comp_ctx*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_admin_queue*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ena_comp_ctx *comp_ctx,
							struct ena_com_admin_queue *admin_queue)
{
	unsigned long flags = 0;
	int ret;

	FUNC8(&comp_ctx->wait_event,
				    FUNC7(
					    admin_queue->completion_timeout));

	/* In case the command wasn't completed find out the root cause.
	 * There might be 2 kinds of errors
	 * 1) No completion (timeout reached)
	 * 2) There is completion but the device didn't get any msi-x interrupt.
	 */
	if (FUNC6(comp_ctx->status == ENA_CMD_SUBMITTED)) {
		FUNC4(&admin_queue->q_lock, flags);
		FUNC2(admin_queue);
		admin_queue->stats.no_completion++;
		FUNC5(&admin_queue->q_lock, flags);

		if (comp_ctx->status == ENA_CMD_COMPLETED) {
			FUNC3("The ena device sent a completion but the driver didn't receive a MSI-X interrupt (cmd %d), autopolling mode is %s\n",
			       comp_ctx->cmd_opcode,
			       admin_queue->auto_polling ? "ON" : "OFF");
			/* Check if fallback to polling is enabled */
			if (admin_queue->auto_polling)
				admin_queue->polling = true;
		} else {
			FUNC3("The ena device doesn't send a completion for the admin cmd %d status %d\n",
			       comp_ctx->cmd_opcode, comp_ctx->status);
		}
		/* Check if shifted to polling mode.
		 * This will happen if there is a completion without an interrupt
		 * and autopolling mode is enabled. Continuing normal execution in such case
		 */
		if (!admin_queue->polling) {
			admin_queue->running_state = false;
			ret = -ETIME;
			goto err;
		}
	}

	ret = FUNC1(comp_ctx->comp_status);
err:
	FUNC0(admin_queue, comp_ctx);
	return ret;
}