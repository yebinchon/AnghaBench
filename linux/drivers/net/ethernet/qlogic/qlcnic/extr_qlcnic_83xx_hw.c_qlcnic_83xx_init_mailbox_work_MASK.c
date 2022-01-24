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
struct qlcnic_mailbox {int /*<<< orphan*/  status; int /*<<< orphan*/  work; int /*<<< orphan*/ * work_q; int /*<<< orphan*/  completion; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  aen_lock; int /*<<< orphan*/  queue_lock; struct qlcnic_adapter* adapter; int /*<<< orphan*/ * ops; } ;
struct qlcnic_hardware_context {struct qlcnic_mailbox* mailbox; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_mailbox*) ; 
 struct qlcnic_mailbox* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlcnic_83xx_mailbox_worker ; 
 int /*<<< orphan*/  qlcnic_83xx_mbx_ops ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	struct qlcnic_mailbox *mbx;

	ahw->mailbox = FUNC5(sizeof(*mbx), GFP_KERNEL);
	if (!ahw->mailbox)
		return -ENOMEM;

	mbx = ahw->mailbox;
	mbx->ops = &qlcnic_83xx_mbx_ops;
	mbx->adapter = adapter;

	FUNC7(&mbx->queue_lock);
	FUNC7(&mbx->aen_lock);
	FUNC0(&mbx->cmd_q);
	FUNC3(&mbx->completion);

	mbx->work_q = FUNC2("qlcnic_mailbox");
	if (mbx->work_q == NULL) {
		FUNC4(mbx);
		return -ENOMEM;
	}

	FUNC1(&mbx->work, qlcnic_83xx_mailbox_worker);
	FUNC6(QLC_83XX_MBX_READY, &mbx->status);
	return 0;
}