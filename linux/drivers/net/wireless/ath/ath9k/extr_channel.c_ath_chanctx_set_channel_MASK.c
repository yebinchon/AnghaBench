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
struct cfg80211_chan_def {int dummy; } ;
struct ath_softc {int /*<<< orphan*/  chan_lock; struct ath_chanctx* cur_chan; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;
struct ath_chanctx {int /*<<< orphan*/  chandef; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAN_CTX ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct cfg80211_chan_def*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ath_softc *sc, struct ath_chanctx *ctx,
			     struct cfg80211_chan_def *chandef)
{
	struct ath_common *common = FUNC0(sc->sc_ah);
	bool cur_chan;

	FUNC4(&sc->chan_lock);
	if (chandef)
		FUNC3(&ctx->chandef, chandef, sizeof(*chandef));
	cur_chan = sc->cur_chan == ctx;
	FUNC5(&sc->chan_lock);

	if (!cur_chan) {
		FUNC1(common, CHAN_CTX,
			"Current context differs from the new context\n");
		return;
	}

	FUNC2(sc);
}