#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct ena_comp_ctx {int /*<<< orphan*/  wait_event; int /*<<< orphan*/  cmd_opcode; struct ena_admin_acq_entry* user_cqe; scalar_t__ comp_size; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {scalar_t__ tail; int phase; int /*<<< orphan*/  db_addr; int /*<<< orphan*/ * entries; } ;
struct TYPE_5__ {int /*<<< orphan*/  submitted_cmd; int /*<<< orphan*/  out_of_space; } ;
struct ena_com_admin_queue {scalar_t__ q_depth; scalar_t__ curr_cmd_id; TYPE_3__ sq; TYPE_2__ stats; int /*<<< orphan*/  outstanding_cmds; } ;
struct TYPE_4__ {int flags; scalar_t__ command_id; int /*<<< orphan*/  opcode; } ;
struct ena_admin_aq_entry {TYPE_1__ aq_common_descriptor; } ;
struct ena_admin_acq_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK ; 
 int ENA_ADMIN_AQ_COMMON_DESC_PHASE_MASK ; 
 int /*<<< orphan*/  ENA_CMD_SUBMITTED ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct ena_comp_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct ena_comp_ctx* FUNC2 (struct ena_com_admin_queue*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ena_admin_aq_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ena_comp_ctx *FUNC8(struct ena_com_admin_queue *admin_queue,
						       struct ena_admin_aq_entry *cmd,
						       size_t cmd_size_in_bytes,
						       struct ena_admin_acq_entry *comp,
						       size_t comp_size_in_bytes)
{
	struct ena_comp_ctx *comp_ctx;
	u16 tail_masked, cmd_id;
	u16 queue_size_mask;
	u16 cnt;

	queue_size_mask = admin_queue->q_depth - 1;

	tail_masked = admin_queue->sq.tail & queue_size_mask;

	/* In case of queue FULL */
	cnt = (u16)FUNC1(&admin_queue->outstanding_cmds);
	if (cnt >= admin_queue->q_depth) {
		FUNC4("admin queue is full.\n");
		admin_queue->stats.out_of_space++;
		return FUNC0(-ENOSPC);
	}

	cmd_id = admin_queue->curr_cmd_id;

	cmd->aq_common_descriptor.flags |= admin_queue->sq.phase &
		ENA_ADMIN_AQ_COMMON_DESC_PHASE_MASK;

	cmd->aq_common_descriptor.command_id |= cmd_id &
		ENA_ADMIN_AQ_COMMON_DESC_COMMAND_ID_MASK;

	comp_ctx = FUNC2(admin_queue, cmd_id, true);
	if (FUNC6(!comp_ctx))
		return FUNC0(-EINVAL);

	comp_ctx->status = ENA_CMD_SUBMITTED;
	comp_ctx->comp_size = (u32)comp_size_in_bytes;
	comp_ctx->user_cqe = comp;
	comp_ctx->cmd_opcode = cmd->aq_common_descriptor.opcode;

	FUNC5(&comp_ctx->wait_event);

	FUNC3(&admin_queue->sq.entries[tail_masked], cmd, cmd_size_in_bytes);

	admin_queue->curr_cmd_id = (admin_queue->curr_cmd_id + 1) &
		queue_size_mask;

	admin_queue->sq.tail++;
	admin_queue->stats.submitted_cmd++;

	if (FUNC6((admin_queue->sq.tail & queue_size_mask) == 0))
		admin_queue->sq.phase = !admin_queue->sq.phase;

	FUNC7(admin_queue->sq.tail, admin_queue->sq.db_addr);

	return comp_ctx;
}