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
struct ieee80211_vif {int type; int p2p; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_vif {int /*<<< orphan*/  chanctx; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  CONFIG_ATH9K_TX99 ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,struct ieee80211_vif*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw,
				  struct ieee80211_vif *vif,
				  enum nl80211_iftype new_type,
				  bool p2p)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC5(sc->sc_ah);
	struct ath_vif *avp = (void *)vif->drv_priv;

	FUNC9(&sc->mutex);

	if (FUNC0(CONFIG_ATH9K_TX99)) {
		FUNC10(&sc->mutex);
		return -EOPNOTSUPP;
	}

	FUNC8(common, CONFIG, "Change Interface\n");

	if (FUNC7(vif->type))
		FUNC3(sc, vif);

	vif->type = new_type;
	vif->p2p = p2p;

	if (FUNC7(vif->type))
		FUNC2(sc, vif);

	FUNC1(hw, vif);
	FUNC4(sc, avp->chanctx);

	FUNC6(sc, vif);

	FUNC10(&sc->mutex);
	return 0;
}