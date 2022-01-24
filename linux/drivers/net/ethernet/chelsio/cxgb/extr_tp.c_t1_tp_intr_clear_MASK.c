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
struct petp {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ A_PL_CAUSE ; 
 scalar_t__ A_TP_INT_CAUSE ; 
 int FPGA_PCIX_INTERRUPT_TP ; 
 scalar_t__ FPGA_TP_ADDR_INTERRUPT_CAUSE ; 
 int F_PL_INTR_TP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(struct petp *tp)
{
#ifdef CONFIG_CHELSIO_T1_1G
	if (!t1_is_asic(tp->adapter)) {
		writel(0xffffffff,
		       tp->adapter->regs + FPGA_TP_ADDR_INTERRUPT_CAUSE);
		writel(FPGA_PCIX_INTERRUPT_TP, tp->adapter->regs + A_PL_CAUSE);
		return;
	}
#endif
	FUNC1(0xffffffff, tp->adapter->regs + A_TP_INT_CAUSE);
	FUNC1(F_PL_INTR_TP, tp->adapter->regs + A_PL_CAUSE);
}