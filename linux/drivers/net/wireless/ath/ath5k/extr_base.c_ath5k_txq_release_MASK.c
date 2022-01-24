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
struct ath5k_txq {int setup; int /*<<< orphan*/  qnum; } ;
struct ath5k_hw {struct ath5k_txq* txqs; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ath5k_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ath5k_hw *ah)
{
	struct ath5k_txq *txq = ah->txqs;
	unsigned int i;

	for (i = 0; i < FUNC0(ah->txqs); i++, txq++)
		if (txq->setup) {
			FUNC1(ah, txq->qnum);
			txq->setup = false;
		}
}