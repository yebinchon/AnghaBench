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
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  driver_flags; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_node {int no_ps_filter; struct ieee80211_vif* vif; int /*<<< orphan*/ * sta; struct ath_softc* sc; } ;
struct ath_vif {TYPE_1__* chanctx; int /*<<< orphan*/  list; struct ieee80211_vif* vif; struct ath_node mcast_node; } ;
struct ath_softc {int /*<<< orphan*/  mutex; TYPE_1__* cur_chan; struct ieee80211_vif* tx99_vif; struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int nvifs; int /*<<< orphan*/  vifs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  CONFIG_ATH9K_TX99 ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IEEE80211_VIF_GET_NOA_UPDATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,TYPE_1__*) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,struct ieee80211_vif*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*,struct ath_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw,
			       struct ieee80211_vif *vif)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC4(ah);
	struct ath_vif *avp = (void *)vif->drv_priv;
	struct ath_node *an = &avp->mcast_node;

	FUNC11(&sc->mutex);
	if (FUNC0(CONFIG_ATH9K_TX99)) {
		if (sc->cur_chan->nvifs >= 1) {
			FUNC12(&sc->mutex);
			return -EOPNOTSUPP;
		}
		sc->tx99_vif = vif;
	}

	FUNC8(common, CONFIG, "Attach a VIF of type: %d\n", vif->type);
	sc->cur_chan->nvifs++;

	if (vif->type == NL80211_IFTYPE_STATION && FUNC5())
		vif->driver_flags |= IEEE80211_VIF_GET_NOA_UPDATE;

	if (FUNC7(vif->type))
		FUNC2(sc, vif);

	avp->vif = vif;
	if (!FUNC5()) {
		avp->chanctx = sc->cur_chan;
		FUNC10(&avp->list, &avp->chanctx->vifs);
	}

	FUNC3(sc, avp->chanctx);

	FUNC1(hw, vif);

	FUNC6(sc, vif);

	an->sc = sc;
	an->sta = NULL;
	an->vif = vif;
	an->no_ps_filter = true;
	FUNC9(sc, an);

	FUNC12(&sc->mutex);
	return 0;
}