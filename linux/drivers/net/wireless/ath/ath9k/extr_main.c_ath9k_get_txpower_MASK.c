#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {TYPE_2__* chanctx; } ;
struct ath_softc {int /*<<< orphan*/  mutex; TYPE_1__* cur_chan; } ;
struct TYPE_4__ {int cur_txpower; } ;
struct TYPE_3__ {int cur_txpower; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			     int *dbm)
{
	struct ath_softc *sc = hw->priv;
	struct ath_vif *avp = (void *)vif->drv_priv;

	FUNC0(&sc->mutex);
	if (avp->chanctx)
		*dbm = avp->chanctx->cur_txpower;
	else
		*dbm = sc->cur_chan->cur_txpower;
	FUNC1(&sc->mutex);

	*dbm /= 2;

	return 0;
}