#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct qlcnic_mailbox {int rsp_status; int /*<<< orphan*/  aen_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  mbx_spurious_intr; } ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {int pci_base0; struct qlcnic_mailbox* mailbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  QLCNIC_DEF_INT_MASK ; 
 int /*<<< orphan*/  QLCNIC_FW_MBX_CTRL ; 
 int QLCNIC_MBX_ASYNC_EVENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int QLCNIC_SET_OWNER ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int QLC_83XX_MBX_RESPONSE_ARRIVED ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_mailbox*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	u32 mask, resp, event, rsp_status = QLC_83XX_MBX_RESPONSE_ARRIVED;
	struct qlcnic_adapter *adapter = data;
	struct qlcnic_mailbox *mbx;
	unsigned long flags;

	mbx = adapter->ahw->mailbox;
	FUNC5(&mbx->aen_lock, flags);
	resp = FUNC1(adapter->ahw, QLCNIC_FW_MBX_CTRL);
	if (!(resp & QLCNIC_SET_OWNER))
		goto out;

	event = FUNC4(FUNC0(adapter->ahw, 0));
	if (event &  QLCNIC_MBX_ASYNC_EVENT) {
		FUNC2(adapter);
	} else {
		if (mbx->rsp_status != rsp_status)
			FUNC3(mbx);
		else
			adapter->stats.mbx_spurious_intr++;
	}

out:
	mask = FUNC1(adapter->ahw, QLCNIC_DEF_INT_MASK);
	FUNC7(0, adapter->ahw->pci_base0 + mask);
	FUNC6(&mbx->aen_lock, flags);
	return IRQ_HANDLED;
}