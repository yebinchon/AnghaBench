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
struct ath10k_hw_ce_host_ie {TYPE_2__* copy_complete; } ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_4__ {int mask; } ;
struct TYPE_3__ {int host_ie_addr; struct ath10k_hw_ce_host_ie* host_ie; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct ath10k *ar,
							u32 ce_ctrl_addr)
{
	struct ath10k_hw_ce_host_ie *host_ie = ar->hw_ce_regs->host_ie;

	u32 host_ie_addr = FUNC0(ar, ce_ctrl_addr +
					    ar->hw_ce_regs->host_ie_addr);

	FUNC1(ar, ce_ctrl_addr + ar->hw_ce_regs->host_ie_addr,
			  host_ie_addr | host_ie->copy_complete->mask);
}