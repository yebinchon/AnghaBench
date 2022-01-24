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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ath10k {TYPE_1__* hw_ce_regs; } ;
struct TYPE_2__ {int sr_base_addr_hi; } ;

/* Variables and functions */
 int CE_DESC_ADDR_HI_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ath10k *ar,
						u32 ce_ctrl_addr,
						u64 addr)
{
	u32 addr_hi = FUNC1(addr) & CE_DESC_ADDR_HI_MASK;

	FUNC0(ar, ce_ctrl_addr +
			  ar->hw_ce_regs->sr_base_addr_hi, addr_hi);
}