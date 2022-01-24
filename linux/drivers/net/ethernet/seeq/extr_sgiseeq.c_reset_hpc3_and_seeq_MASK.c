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
struct sgiseeq_regs {int dummy; } ;
struct hpc3_ethregs {scalar_t__ tx_ctrl; scalar_t__ rx_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpc3_ethregs*) ; 

__attribute__((used)) static inline void FUNC1(struct hpc3_ethregs *hregs,
				       struct sgiseeq_regs *sregs)
{
	hregs->rx_ctrl = hregs->tx_ctrl = 0;
	FUNC0(hregs);
}