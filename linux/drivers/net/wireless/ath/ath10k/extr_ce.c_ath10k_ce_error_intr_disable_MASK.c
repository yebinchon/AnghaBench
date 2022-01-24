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
struct ath10k_hw_ce_misc_regs {int err_mask; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_2__ {int misc_ie_addr; struct ath10k_hw_ce_misc_regs* misc_regs; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct ath10k *ar,
						u32 ce_ctrl_addr)
{
	struct ath10k_hw_ce_misc_regs *misc_regs = ar->hw_ce_regs->misc_regs;

	u32 misc_ie_addr = FUNC0(ar,
			ce_ctrl_addr + ar->hw_ce_regs->misc_ie_addr);

	FUNC1(ar,
			  ce_ctrl_addr + ar->hw_ce_regs->misc_ie_addr,
			  misc_ie_addr & ~(misc_regs->err_mask));
}