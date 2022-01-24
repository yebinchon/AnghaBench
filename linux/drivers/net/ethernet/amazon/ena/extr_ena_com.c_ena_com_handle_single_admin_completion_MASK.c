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
typedef  int u16 ;
struct ena_comp_ctx {int /*<<< orphan*/  wait_event; int /*<<< orphan*/  comp_size; scalar_t__ user_cqe; int /*<<< orphan*/  comp_status; int /*<<< orphan*/  status; } ;
struct ena_com_admin_queue {int running_state; int /*<<< orphan*/  polling; } ;
struct TYPE_2__ {int command; int /*<<< orphan*/  status; } ;
struct ena_admin_acq_entry {TYPE_1__ acq_common_descriptor; } ;

/* Variables and functions */
 int ENA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK ; 
 int /*<<< orphan*/  ENA_CMD_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ena_comp_ctx* FUNC1 (struct ena_com_admin_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ena_com_admin_queue *admin_queue,
						   struct ena_admin_acq_entry *cqe)
{
	struct ena_comp_ctx *comp_ctx;
	u16 cmd_id;

	cmd_id = cqe->acq_common_descriptor.command &
		ENA_ADMIN_ACQ_COMMON_DESC_COMMAND_ID_MASK;

	comp_ctx = FUNC1(admin_queue, cmd_id, false);
	if (FUNC4(!comp_ctx)) {
		FUNC3("comp_ctx is NULL. Changing the admin queue running state\n");
		admin_queue->running_state = false;
		return;
	}

	comp_ctx->status = ENA_CMD_COMPLETED;
	comp_ctx->comp_status = cqe->acq_common_descriptor.status;

	if (comp_ctx->user_cqe)
		FUNC2(comp_ctx->user_cqe, (void *)cqe, comp_ctx->comp_size);

	if (!admin_queue->polling)
		FUNC0(&comp_ctx->wait_event);
}