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
typedef  int u32 ;
struct qlcnic_adapter {int /*<<< orphan*/  isr_int_vec; int /*<<< orphan*/  tgt_status_reg; int /*<<< orphan*/  crb_int_state_reg; TYPE_1__* ahw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int int_vec_bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(struct qlcnic_adapter *adapter)
{
	u32 status;

	status = FUNC1(adapter->isr_int_vec);

	if (!(status & adapter->ahw->int_vec_bit))
		return IRQ_NONE;

	/* check interrupt state machine, to be sure */
	status = FUNC1(adapter->crb_int_state_reg);
	if (!FUNC0(status))
		return IRQ_NONE;

	FUNC2(0xffffffff, adapter->tgt_status_reg);
	/* read twice to ensure write is flushed */
	FUNC1(adapter->isr_int_vec);
	FUNC1(adapter->isr_int_vec);

	return IRQ_HANDLED;
}