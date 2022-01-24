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
struct ath5k_hw {int imask; int /*<<< orphan*/  irqlock; scalar_t__ tx_pending; scalar_t__ rx_pending; int /*<<< orphan*/  status; } ;
typedef  enum ath5k_int { ____Placeholder_ath5k_int } ath5k_int ;

/* Variables and functions */
 int AR5K_INT_RX_ALL ; 
 int AR5K_INT_TX_ALL ; 
 int /*<<< orphan*/  ATH_STAT_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ath5k_hw *ah)
{
	enum ath5k_int imask;
	unsigned long flags;

	if (FUNC3(ATH_STAT_RESET, ah->status))
		return;

	FUNC1(&ah->irqlock, flags);
	imask = ah->imask;
	if (ah->rx_pending)
		imask &= ~AR5K_INT_RX_ALL;
	if (ah->tx_pending)
		imask &= ~AR5K_INT_TX_ALL;
	FUNC0(ah, imask);
	FUNC2(&ah->irqlock, flags);
}