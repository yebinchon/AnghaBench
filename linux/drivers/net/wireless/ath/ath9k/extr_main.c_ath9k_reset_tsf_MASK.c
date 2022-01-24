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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {TYPE_1__* chanctx; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_ah; TYPE_1__* cur_chan; } ;
struct TYPE_2__ {scalar_t__ tsf_val; int /*<<< orphan*/  tsf_ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct ath_softc *sc = hw->priv;
	struct ath_vif *avp = (void *)vif->drv_priv;

	FUNC4(&sc->mutex);

	FUNC2(sc);
	FUNC3(&avp->chanctx->tsf_ts);
	if (sc->cur_chan == avp->chanctx)
		FUNC0(sc->sc_ah);
	avp->chanctx->tsf_val = 0;
	FUNC1(sc);

	FUNC5(&sc->mutex);
}