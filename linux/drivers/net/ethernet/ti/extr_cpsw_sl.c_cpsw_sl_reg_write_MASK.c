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
typedef  int /*<<< orphan*/  u32 ;
struct cpsw_sl {scalar_t__* regs; scalar_t__ sl_base; int /*<<< orphan*/  dev; } ;
typedef  enum cpsw_sl_regs { ____Placeholder_cpsw_sl_regs } cpsw_sl_regs ;

/* Variables and functions */
 scalar_t__ CPSW_SL_REG_NOTUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct cpsw_sl *sl, enum cpsw_sl_regs reg, u32 val)
{
	if (sl->regs[reg] == CPSW_SL_REG_NOTUSED) {
		FUNC1(sl->dev, "cpsw_sl: not sup w reg: %04X\n",
			sl->regs[reg]);
		return;
	}

	FUNC0(sl->dev, "cpsw_sl: reg: %04X w 0x%08X\n", sl->regs[reg], val);
	FUNC2(val, sl->sl_base + sl->regs[reg]);
}