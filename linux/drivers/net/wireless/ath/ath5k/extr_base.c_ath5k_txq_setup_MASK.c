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
struct ath5k_txq_info {int tqi_subtype; int tqi_flags; int /*<<< orphan*/  tqi_cw_max; int /*<<< orphan*/  tqi_cw_min; int /*<<< orphan*/  tqi_aifs; } ;
struct ath5k_txq {int setup; int qnum; int txq_poll_mark; scalar_t__ txq_stuck; int /*<<< orphan*/  txq_max; scalar_t__ txq_len; int /*<<< orphan*/  lock; int /*<<< orphan*/  q; int /*<<< orphan*/ * link; } ;
struct ath5k_hw {struct ath5k_txq* txqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_TUNE_AIFS ; 
 int /*<<< orphan*/  AR5K_TUNE_CWMAX ; 
 int /*<<< orphan*/  AR5K_TUNE_CWMIN ; 
 int AR5K_TXQ_FLAG_TXDESCINT_ENABLE ; 
 int AR5K_TXQ_FLAG_TXEOLINT_ENABLE ; 
 int /*<<< orphan*/  ATH5K_TXQ_LEN_MAX ; 
 struct ath5k_txq* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ath5k_hw*,int,struct ath5k_txq_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ath5k_txq *
FUNC4(struct ath5k_hw *ah,
		int qtype, int subtype)
{
	struct ath5k_txq *txq;
	struct ath5k_txq_info qi = {
		.tqi_subtype = subtype,
		/* XXX: default values not correct for B and XR channels,
		 * but who cares? */
		.tqi_aifs = AR5K_TUNE_AIFS,
		.tqi_cw_min = AR5K_TUNE_CWMIN,
		.tqi_cw_max = AR5K_TUNE_CWMAX
	};
	int qnum;

	/*
	 * Enable interrupts only for EOL and DESC conditions.
	 * We mark tx descriptors to receive a DESC interrupt
	 * when a tx queue gets deep; otherwise we wait for the
	 * EOL to reap descriptors.  Note that this is done to
	 * reduce interrupt load and this only defers reaping
	 * descriptors, never transmitting frames.  Aside from
	 * reducing interrupts this also permits more concurrency.
	 * The only potential downside is if the tx queue backs
	 * up in which case the top half of the kernel may backup
	 * due to a lack of tx descriptors.
	 */
	qi.tqi_flags = AR5K_TXQ_FLAG_TXEOLINT_ENABLE |
				AR5K_TXQ_FLAG_TXDESCINT_ENABLE;
	qnum = FUNC2(ah, qtype, &qi);
	if (qnum < 0) {
		/*
		 * NB: don't print a message, this happens
		 * normally on parts with too few tx queues
		 */
		return FUNC0(qnum);
	}
	txq = &ah->txqs[qnum];
	if (!txq->setup) {
		txq->qnum = qnum;
		txq->link = NULL;
		FUNC1(&txq->q);
		FUNC3(&txq->lock);
		txq->setup = true;
		txq->txq_len = 0;
		txq->txq_max = ATH5K_TXQ_LEN_MAX;
		txq->txq_poll_mark = false;
		txq->txq_stuck = 0;
	}
	return &ah->txqs[qnum];
}