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
struct qlcnic_mailbox {int /*<<< orphan*/  work_q; int /*<<< orphan*/  work; int /*<<< orphan*/  completion; int /*<<< orphan*/  status; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {struct qlcnic_mailbox* mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 

void FUNC5(struct qlcnic_adapter *adapter)
{
	struct qlcnic_mailbox *mbx = adapter->ahw->mailbox;

	if (!mbx)
		return;

	FUNC1(QLC_83XX_MBX_READY, &mbx->status);
	FUNC2(&mbx->completion);
	FUNC0(&mbx->work);
	FUNC3(mbx->work_q);
	FUNC4(adapter);
}