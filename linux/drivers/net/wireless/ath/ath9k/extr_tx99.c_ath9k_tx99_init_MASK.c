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
typedef  int /*<<< orphan*/  txctl ;
struct ieee80211_hw {int dummy; } ;
struct ath_tx_control {int /*<<< orphan*/  txq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * txq_map; } ;
struct ath_softc {int tx99_state; int tx99_power; int /*<<< orphan*/  tx99_skb; TYPE_1__ tx; struct ath_hw* sc_ah; struct ieee80211_hw* hw; } ;
struct ath_hw {int dummy; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_INVALID ; 
 int EINVAL ; 
 int ENOMEM ; 
 size_t IEEE80211_AC_VO ; 
 int MAX_RATE_POWER ; 
 int /*<<< orphan*/  XMIT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int FUNC5 (struct ath_softc*,int /*<<< orphan*/ ,struct ath_tx_control*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_tx_control*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct ath_softc *sc)
{
	struct ieee80211_hw *hw = sc->hw;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC1(ah);
	struct ath_tx_control txctl;
	int r;

	if (FUNC13(ATH_OP_INVALID, &common->op_flags)) {
		FUNC8(common,
			"driver is in invalid state unable to use TX99");
		return -EINVAL;
	}

	sc->tx99_skb = FUNC0(sc);
	if (!sc->tx99_skb)
		return -ENOMEM;

	FUNC12(&txctl, 0, sizeof(txctl));
	txctl.txq = sc->tx.txq_map[IEEE80211_AC_VO];

	FUNC9(sc, NULL);

	FUNC4(sc);

	FUNC2(ah);
	FUNC7(sc);
	FUNC10(sc);

	sc->tx99_state = true;

	FUNC11(hw);

	if (sc->tx99_power == MAX_RATE_POWER + 1)
		sc->tx99_power = MAX_RATE_POWER;

	FUNC3(ah, sc->tx99_power);
	r = FUNC5(sc, sc->tx99_skb, &txctl);
	if (r) {
		FUNC6(common, XMIT, "Failed to xmit TX99 skb\n");
		return r;
	}

	FUNC6(common, XMIT, "TX99 xmit started using %d ( %ddBm)\n",
		sc->tx99_power,
		sc->tx99_power / 2);

	/* We leave the hardware awake as it will be chugging on */

	return 0;
}