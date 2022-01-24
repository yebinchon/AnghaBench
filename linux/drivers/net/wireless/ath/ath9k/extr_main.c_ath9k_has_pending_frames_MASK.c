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
struct ath_txq {size_t mac80211_qnum; int /*<<< orphan*/  axq_lock; scalar_t__ axq_depth; } ;
struct ath_softc {TYPE_1__* cur_chan; } ;
struct ath_acq {int /*<<< orphan*/  acq_old; int /*<<< orphan*/  acq_new; } ;
struct TYPE_2__ {struct ath_acq* acq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct ath_softc *sc, struct ath_txq *txq,
				     bool sw_pending)
{
	bool pending = false;

	FUNC1(&txq->axq_lock);

	if (txq->axq_depth) {
		pending = true;
		goto out;
	}

	if (!sw_pending)
		goto out;

	if (txq->mac80211_qnum >= 0) {
		struct ath_acq *acq;

		acq = &sc->cur_chan->acq[txq->mac80211_qnum];
		if (!FUNC0(&acq->acq_new) || !FUNC0(&acq->acq_old))
			pending = true;
	}
out:
	FUNC2(&txq->axq_lock);
	return pending;
}