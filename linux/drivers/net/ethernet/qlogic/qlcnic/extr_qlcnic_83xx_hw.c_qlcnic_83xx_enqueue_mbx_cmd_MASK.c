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
struct qlcnic_mailbox {unsigned long num_cmds; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  work_q; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  status; } ;
struct qlcnic_cmd_args {unsigned long total_cmds; int /*<<< orphan*/  list; int /*<<< orphan*/  rsp_opcode; int /*<<< orphan*/  completion; int /*<<< orphan*/  rsp_status; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_mailbox* mailbox; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  QLC_83XX_MBX_RESPONSE_UNKNOWN ; 
 int /*<<< orphan*/  QLC_83XX_MBX_RESPONSE_WAIT ; 
 unsigned long QLC_83XX_MBX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct qlcnic_adapter *adapter,
				       struct qlcnic_cmd_args *cmd,
				       unsigned long *timeout)
{
	struct qlcnic_mailbox *mbx = adapter->ahw->mailbox;

	if (FUNC6(QLC_83XX_MBX_READY, &mbx->status)) {
		FUNC0(&cmd->rsp_status, QLC_83XX_MBX_RESPONSE_WAIT);
		FUNC1(&cmd->completion);
		cmd->rsp_opcode = QLC_83XX_MBX_RESPONSE_UNKNOWN;

		FUNC4(&mbx->queue_lock);

		FUNC2(&cmd->list, &mbx->cmd_q);
		mbx->num_cmds++;
		cmd->total_cmds = mbx->num_cmds;
		*timeout = cmd->total_cmds * QLC_83XX_MBX_TIMEOUT;
		FUNC3(mbx->work_q, &mbx->work);

		FUNC5(&mbx->queue_lock);

		return 0;
	}

	return -EBUSY;
}