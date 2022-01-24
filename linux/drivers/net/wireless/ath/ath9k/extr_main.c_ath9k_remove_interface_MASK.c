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
struct ieee80211_vif {int /*<<< orphan*/  type; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {int /*<<< orphan*/  chanctx; int /*<<< orphan*/  mcast_node; int /*<<< orphan*/  list; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * tx99_vif; TYPE_1__* cur_chan; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nvifs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC2(sc->sc_ah);
	struct ath_vif *avp = (void *)vif->drv_priv;

	FUNC7(common, CONFIG, "Detach Interface\n");

	FUNC10(&sc->mutex);

	FUNC4(sc, vif);

	sc->cur_chan->nvifs--;
	sc->tx99_vif = NULL;
	if (!FUNC3())
		FUNC9(&avp->list);

	if (FUNC6(vif->type))
		FUNC0(sc, vif);

	FUNC8(sc, &avp->mcast_node);

	FUNC1(sc, avp->chanctx);

	FUNC5(sc, NULL);

	FUNC11(&sc->mutex);
}