#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_16__ {scalar_t__ width; } ;
struct ath_softc {int /*<<< orphan*/  chan_lock; TYPE_7__* sc_ah; TYPE_5__* cur_chan; TYPE_4__ cur_chandef; TYPE_2__* hw; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;
struct TYPE_18__ {scalar_t__ macVersion; } ;
struct TYPE_15__ {scalar_t__ enabled; } ;
struct TYPE_19__ {scalar_t__ opmode; TYPE_6__ hw_version; TYPE_3__ dynack; scalar_t__ is_monitoring; } ;
struct TYPE_17__ {int rxfilter; int nvifs; } ;
struct TYPE_13__ {scalar_t__ radar_enabled; } ;
struct TYPE_14__ {TYPE_1__ conf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 scalar_t__ FUNC2 (TYPE_7__*) ; 
 scalar_t__ FUNC3 (TYPE_7__*) ; 
 scalar_t__ FUNC4 (TYPE_7__*) ; 
 scalar_t__ AR_SREV_VERSION_9160 ; 
 int ATH9K_RX_FILTER_4ADDRESS ; 
 int ATH9K_RX_FILTER_BCAST ; 
 int ATH9K_RX_FILTER_BEACON ; 
 int ATH9K_RX_FILTER_COMP_BAR ; 
 int ATH9K_RX_FILTER_CONTROL ; 
 int ATH9K_RX_FILTER_CONTROL_WRAPPER ; 
 int ATH9K_RX_FILTER_MCAST ; 
 int ATH9K_RX_FILTER_MCAST_BCAST_ALL ; 
 int ATH9K_RX_FILTER_MYBEACON ; 
 int ATH9K_RX_FILTER_PHYERR ; 
 int ATH9K_RX_FILTER_PHYRADAR ; 
 int ATH9K_RX_FILTER_PROBEREQ ; 
 int ATH9K_RX_FILTER_PROM ; 
 int ATH9K_RX_FILTER_PSPOLL ; 
 int ATH9K_RX_FILTER_UCAST ; 
 int /*<<< orphan*/  ATH_OP_SCANNING ; 
 int /*<<< orphan*/  CONFIG_ATH9K_TX99 ; 
 int FIF_BCN_PRBRESP_PROMISC ; 
 int FIF_CONTROL ; 
 int FIF_OTHER_BSS ; 
 int FIF_PROBE_REQ ; 
 int FIF_PSPOLL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_OCB ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 struct ath_common* FUNC6 (TYPE_7__*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

u32 FUNC11(struct ath_softc *sc)
{
	struct ath_common *common = FUNC6(sc->sc_ah);
	u32 rfilt;

	if (FUNC5(CONFIG_ATH9K_TX99))
		return 0;

	rfilt = ATH9K_RX_FILTER_UCAST | ATH9K_RX_FILTER_BCAST
		| ATH9K_RX_FILTER_MCAST;

	/* if operating on a DFS channel, enable radar pulse detection */
	if (sc->hw->conf.radar_enabled)
		rfilt |= ATH9K_RX_FILTER_PHYRADAR | ATH9K_RX_FILTER_PHYERR;

	FUNC8(&sc->chan_lock);

	if (sc->cur_chan->rxfilter & FIF_PROBE_REQ)
		rfilt |= ATH9K_RX_FILTER_PROBEREQ;

	if (sc->sc_ah->is_monitoring)
		rfilt |= ATH9K_RX_FILTER_PROM;

	if ((sc->cur_chan->rxfilter & FIF_CONTROL) ||
	    sc->sc_ah->dynack.enabled)
		rfilt |= ATH9K_RX_FILTER_CONTROL;

	if ((sc->sc_ah->opmode == NL80211_IFTYPE_STATION) &&
	    (sc->cur_chan->nvifs <= 1) &&
	    !(sc->cur_chan->rxfilter & FIF_BCN_PRBRESP_PROMISC))
		rfilt |= ATH9K_RX_FILTER_MYBEACON;
	else if (sc->sc_ah->opmode != NL80211_IFTYPE_OCB)
		rfilt |= ATH9K_RX_FILTER_BEACON;

	if ((sc->sc_ah->opmode == NL80211_IFTYPE_AP) ||
	    (sc->cur_chan->rxfilter & FIF_PSPOLL))
		rfilt |= ATH9K_RX_FILTER_PSPOLL;

	if (sc->cur_chandef.width != NL80211_CHAN_WIDTH_20_NOHT)
		rfilt |= ATH9K_RX_FILTER_COMP_BAR;

	if (sc->cur_chan->nvifs > 1 || (sc->cur_chan->rxfilter & FIF_OTHER_BSS)) {
		/* This is needed for older chips */
		if (sc->sc_ah->hw_version.macVersion <= AR_SREV_VERSION_9160)
			rfilt |= ATH9K_RX_FILTER_PROM;
		rfilt |= ATH9K_RX_FILTER_MCAST_BCAST_ALL;
	}

	if (FUNC2(sc->sc_ah) || FUNC1(sc->sc_ah) ||
	    FUNC3(sc->sc_ah))
		rfilt |= ATH9K_RX_FILTER_4ADDRESS;

	if (FUNC0(sc->sc_ah) || FUNC4(sc->sc_ah))
		rfilt |= ATH9K_RX_FILTER_CONTROL_WRAPPER;

	if (FUNC7() &&
	    FUNC10(ATH_OP_SCANNING, &common->op_flags))
		rfilt |= ATH9K_RX_FILTER_BEACON;

	FUNC9(&sc->chan_lock);

	return rfilt;

}