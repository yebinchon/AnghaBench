#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ath10k_ce {int /*<<< orphan*/  vaddr_rri; int /*<<< orphan*/  paddr_rri; } ;
struct ath10k {TYPE_3__* hw_ce_regs; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int ce_rri_low; int ce_rri_high; TYPE_2__* upd; TYPE_1__* ctrl1_regs; } ;
struct TYPE_5__ {int mask; } ;
struct TYPE_4__ {int addr; } ;

/* Variables and functions */
 int CE_COUNT ; 
 int CE_DESC_ADDR_HI_MASK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ath10k*,int) ; 
 struct ath10k_ce* FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct ath10k *ar)
{
	int i;
	u32 value;
	u32 ctrl1_regs;
	u32 ce_base_addr;
	struct ath10k_ce *ce = FUNC1(ar);

	ce->vaddr_rri = FUNC4(ar->dev,
					   (CE_COUNT * sizeof(u32)),
					   &ce->paddr_rri, GFP_KERNEL);

	if (!ce->vaddr_rri)
		return;

	FUNC3(ar, ar->hw_ce_regs->ce_rri_low,
			  FUNC5(ce->paddr_rri));
	FUNC3(ar, ar->hw_ce_regs->ce_rri_high,
			  (FUNC7(ce->paddr_rri) &
			  CE_DESC_ADDR_HI_MASK));

	for (i = 0; i < CE_COUNT; i++) {
		ctrl1_regs = ar->hw_ce_regs->ctrl1_regs->addr;
		ce_base_addr = FUNC0(ar, i);
		value = FUNC2(ar, ce_base_addr + ctrl1_regs);
		value |= ar->hw_ce_regs->upd->mask;
		FUNC3(ar, ce_base_addr + ctrl1_regs, value);
	}

	FUNC6(ce->vaddr_rri, 0, CE_COUNT * sizeof(u32));
}