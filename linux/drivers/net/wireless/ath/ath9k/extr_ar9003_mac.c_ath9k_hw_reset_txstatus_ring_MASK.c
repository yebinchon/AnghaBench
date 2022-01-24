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
struct ath_hw {int ts_size; int /*<<< orphan*/  ts_paddr_end; int /*<<< orphan*/  ts_paddr_start; scalar_t__ ts_ring; scalar_t__ ts_tail; } ;
struct ar9003_txs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_Q_STATUS_RING_END ; 
 int /*<<< orphan*/  AR_Q_STATUS_RING_START ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XMIT ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct ath_hw *ah)
{
	ah->ts_tail = 0;

	FUNC3((void *) ah->ts_ring, 0,
		ah->ts_size * sizeof(struct ar9003_txs));

	FUNC2(FUNC1(ah), XMIT,
		"TS Start 0x%x End 0x%x Virt %p, Size %d\n",
		ah->ts_paddr_start, ah->ts_paddr_end,
		ah->ts_ring, ah->ts_size);

	FUNC0(ah, AR_Q_STATUS_RING_START, ah->ts_paddr_start);
	FUNC0(ah, AR_Q_STATUS_RING_END, ah->ts_paddr_end);
}