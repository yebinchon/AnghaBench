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
struct qlcnic_host_sds_ring {struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {int flags; TYPE_1__* ahw; int /*<<< orphan*/  tgt_status_reg; } ;
typedef  scalar_t__ irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  diag_cnt; } ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 int QLCNIC_MSIX_ENABLED ; 
 int QLCNIC_MSI_ENABLED ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,struct qlcnic_host_sds_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct qlcnic_host_sds_ring *sds_ring = data;
	struct qlcnic_adapter *adapter = sds_ring->adapter;

	if (adapter->flags & QLCNIC_MSIX_ENABLED)
		goto done;
	else if (adapter->flags & QLCNIC_MSI_ENABLED) {
		FUNC2(0xffffffff, adapter->tgt_status_reg);
		goto done;
	}

	if (FUNC0(adapter) == IRQ_NONE)
		return IRQ_NONE;

done:
	adapter->ahw->diag_cnt++;
	FUNC1(adapter, sds_ring);
	return IRQ_HANDLED;
}