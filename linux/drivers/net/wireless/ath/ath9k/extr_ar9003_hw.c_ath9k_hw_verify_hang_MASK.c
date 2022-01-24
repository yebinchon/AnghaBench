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
typedef  int u8 ;
typedef  int u32 ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_DMADBG_4 ; 
 int /*<<< orphan*/  AR_DMADBG_5 ; 
 int /*<<< orphan*/  AR_DMADBG_6 ; 
 int NUM_STATUS_READS ; 
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static bool FUNC3(struct ath_hw *ah, unsigned int queue)
{
	u32 dma_dbg_chain, dma_dbg_complete;
	u8 dcu_chain_state, dcu_complete_state;
	int i;

	for (i = 0; i < NUM_STATUS_READS; i++) {
		if (queue < 6)
			dma_dbg_chain = FUNC0(ah, AR_DMADBG_4);
		else
			dma_dbg_chain = FUNC0(ah, AR_DMADBG_5);

		dma_dbg_complete = FUNC0(ah, AR_DMADBG_6);

		dcu_chain_state = (dma_dbg_chain >> (5 * queue)) & 0x1f;
		dcu_complete_state = dma_dbg_complete & 0x3;

		if ((dcu_chain_state != 0x6) || (dcu_complete_state != 0x1))
			return false;
	}

	FUNC2(FUNC1(ah), RESET,
		"MAC Hang signature found for queue: %d\n", queue);

	return true;
}