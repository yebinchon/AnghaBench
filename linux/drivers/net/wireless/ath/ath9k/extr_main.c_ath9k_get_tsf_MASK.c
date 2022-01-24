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
typedef  scalar_t__ u64 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {int /*<<< orphan*/  tsf_adjust; TYPE_1__* chanctx; } ;
struct ath_softc {int /*<<< orphan*/  mutex; TYPE_1__* cur_chan; int /*<<< orphan*/  sc_ah; } ;
struct TYPE_2__ {int /*<<< orphan*/  tsf_ts; scalar_t__ tsf_val; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC7(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct ath_softc *sc = hw->priv;
	struct ath_vif *avp = (void *)vif->drv_priv;
	u64 tsf;

	FUNC5(&sc->mutex);
	FUNC3(sc);
	/* Get current TSF either from HW or kernel time. */
	if (sc->cur_chan == avp->chanctx) {
		tsf = FUNC1(sc->sc_ah);
	} else {
		tsf = sc->cur_chan->tsf_val +
		      FUNC0(&sc->cur_chan->tsf_ts, NULL);
	}
	tsf += FUNC4(avp->tsf_adjust);
	FUNC2(sc);
	FUNC6(&sc->mutex);

	return tsf;
}