#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct regulatory_request {int /*<<< orphan*/  dfs_region; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {TYPE_3__* cur_chan; TYPE_4__* dfs_detector; struct ath_hw* sc_ah; } ;
struct ath_regulatory {int dummy; } ;
struct ath_hw {TYPE_2__* curchan; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_dfs_domain ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int txpower; int /*<<< orphan*/  cur_txpower; } ;
struct TYPE_6__ {TYPE_1__* chan; } ;
struct TYPE_5__ {int max_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct ath_regulatory* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct wiphy*,struct regulatory_request*,struct ath_regulatory*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct ieee80211_hw* FUNC7 (struct wiphy*) ; 

__attribute__((used)) static void FUNC8(struct wiphy *wiphy,
			       struct regulatory_request *request)
{
	struct ieee80211_hw *hw = FUNC7(wiphy);
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_regulatory *reg = FUNC1(ah);

	FUNC5(wiphy, request, reg);

	/* synchronize DFS detector if regulatory domain changed */
	if (sc->dfs_detector != NULL)
		sc->dfs_detector->set_dfs_domain(sc->dfs_detector,
						 request->dfs_region);

	/* Set tx power */
	if (!ah->curchan)
		return;

	sc->cur_chan->txpower = 2 * ah->curchan->chan->max_power;
	FUNC4(sc);
	FUNC2(ah, sc->cur_chan->txpower, false);
	FUNC0(ah, sc->cur_chan->cur_txpower,
			       sc->cur_chan->txpower,
			       &sc->cur_chan->cur_txpower);
	FUNC3(sc);
}