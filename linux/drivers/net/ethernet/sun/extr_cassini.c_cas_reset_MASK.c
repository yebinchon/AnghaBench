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
struct cas {int cas_flags; int /*<<< orphan*/ * stat_lock; scalar_t__ regs; } ;

/* Variables and functions */
 int CAS_FLAG_TARGET_ABORT ; 
 scalar_t__ CAS_HP_ALT_FIRMWARE ; 
 scalar_t__ CAS_HP_FIRMWARE ; 
 size_t N_TX_RINGS ; 
 scalar_t__ REG_RX_CFG ; 
 scalar_t__ REG_TX_CFG ; 
 int /*<<< orphan*/  RX_CFG_DMA_EN ; 
 int /*<<< orphan*/  TX_CFG_DMA_EN ; 
 int /*<<< orphan*/  FUNC0 (struct cas*) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*) ; 
 int /*<<< orphan*/  FUNC2 (struct cas*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cas*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cas*) ; 
 int /*<<< orphan*/  FUNC5 (struct cas*) ; 
 scalar_t__ cas_prog_null ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct cas *cp, int blkflag)
{
	u32 val;

	FUNC5(cp);
	FUNC2(cp, blkflag);
	FUNC4(cp);
	FUNC1(cp);

	/* disable dma engines. */
	val = FUNC6(cp->regs + REG_TX_CFG);
	val &= ~TX_CFG_DMA_EN;
	FUNC9(val, cp->regs + REG_TX_CFG);

	val = FUNC6(cp->regs + REG_RX_CFG);
	val &= ~RX_CFG_DMA_EN;
	FUNC9(val, cp->regs + REG_RX_CFG);

	/* program header parser */
	if ((cp->cas_flags & CAS_FLAG_TARGET_ABORT) ||
	    (CAS_HP_ALT_FIRMWARE == cas_prog_null)) {
		FUNC3(cp, CAS_HP_FIRMWARE);
	} else {
		FUNC3(cp, CAS_HP_ALT_FIRMWARE);
	}

	/* clear out error registers */
	FUNC7(&cp->stat_lock[N_TX_RINGS]);
	FUNC0(cp);
	FUNC8(&cp->stat_lock[N_TX_RINGS]);
}