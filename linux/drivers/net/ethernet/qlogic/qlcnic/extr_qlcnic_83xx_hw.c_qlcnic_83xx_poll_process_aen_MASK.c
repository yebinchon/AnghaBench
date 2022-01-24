#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qlcnic_mailbox {int rsp_status; int /*<<< orphan*/  aen_lock; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_3__ {struct qlcnic_mailbox* mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_FW_MBX_CTRL ; 
 int QLCNIC_MBX_ASYNC_EVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int QLCNIC_SET_OWNER ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int QLC_83XX_MBX_RESPONSE_ARRIVED ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_mailbox*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct qlcnic_adapter *adapter)
{
	u32 resp, event, rsp_status = QLC_83XX_MBX_RESPONSE_ARRIVED;
	struct qlcnic_mailbox *mbx = adapter->ahw->mailbox;
	unsigned long flags;

	FUNC6(&mbx->aen_lock, flags);
	resp = FUNC1(adapter->ahw, QLCNIC_FW_MBX_CTRL);
	if (!(resp & QLCNIC_SET_OWNER))
		goto out;

	event = FUNC5(FUNC0(adapter->ahw, 0));
	if (event &  QLCNIC_MBX_ASYNC_EVENT) {
		FUNC2(adapter);
	} else {
		if (mbx->rsp_status != rsp_status)
			FUNC4(mbx);
	}
out:
	FUNC3(adapter);
	FUNC7(&mbx->aen_lock, flags);
}