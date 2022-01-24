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
struct petp {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ A_PL_ENABLE ; 
 scalar_t__ A_TP_INT_ENABLE ; 
 int FPGA_PCIX_INTERRUPT_TP ; 
 scalar_t__ FPGA_TP_ADDR_INTERRUPT_ENABLE ; 
 int F_PL_INTR_TP ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct petp *tp)
{
	u32 tp_intr = FUNC0(tp->adapter->regs + A_PL_ENABLE);

#ifdef CONFIG_CHELSIO_T1_1G
	if (!t1_is_asic(tp->adapter)) {
		/* FPGA */
		writel(0xffffffff,
		       tp->adapter->regs + FPGA_TP_ADDR_INTERRUPT_ENABLE);
		writel(tp_intr | FPGA_PCIX_INTERRUPT_TP,
		       tp->adapter->regs + A_PL_ENABLE);
	} else
#endif
	{
		/* We don't use any TP interrupts */
		FUNC2(0, tp->adapter->regs + A_TP_INT_ENABLE);
		FUNC2(tp_intr | F_PL_INTR_TP,
		       tp->adapter->regs + A_PL_ENABLE);
	}
}