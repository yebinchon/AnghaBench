#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ath10k_hw_ce_dst_src_wm_regs {int addr; TYPE_2__* wm_low; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_4__ {int mask; } ;
struct TYPE_3__ {struct ath10k_hw_ce_dst_src_wm_regs* wm_srcr; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int,int) ; 
 int FUNC2 (unsigned int,TYPE_2__*) ; 

__attribute__((used)) static inline void FUNC3(struct ath10k *ar,
						  u32 ce_ctrl_addr,
						  unsigned int n)
{
	struct ath10k_hw_ce_dst_src_wm_regs *srcr_wm = ar->hw_ce_regs->wm_srcr;
	u32 addr = FUNC0(ar, ce_ctrl_addr + srcr_wm->addr);

	FUNC1(ar, ce_ctrl_addr + srcr_wm->addr,
			  (addr & ~(srcr_wm->wm_low->mask)) |
			  (FUNC2(n, srcr_wm->wm_low)));
}