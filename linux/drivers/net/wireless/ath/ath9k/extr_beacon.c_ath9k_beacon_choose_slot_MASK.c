#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct ath_softc {TYPE_3__* sc_ah; TYPE_1__* cur_chan; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {scalar_t__ beacon_interval; } ;
struct TYPE_6__ {int /*<<< orphan*/  sw_beacon_response_time; } ;
struct TYPE_7__ {scalar_t__ opmode; TYPE_2__ config; } ;
struct TYPE_5__ {struct ath_beacon_config beacon; } ;

/* Variables and functions */
 int ATH_BCBUF ; 
 int ATH_DEFAULT_BINTVAL ; 
 int /*<<< orphan*/  BEACON ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC5(struct ath_softc *sc)
{
	struct ath_common *common = FUNC2(sc->sc_ah);
	struct ath_beacon_config *cur_conf = &sc->cur_chan->beacon;
	u16 intval;
	u32 tsftu;
	u64 tsf;
	int slot;

	if (sc->sc_ah->opmode != NL80211_IFTYPE_AP &&
	    sc->sc_ah->opmode != NL80211_IFTYPE_MESH_POINT) {
		FUNC4(common, BEACON, "slot 0, tsf: %llu\n",
			FUNC3(sc->sc_ah));
		return 0;
	}

	intval = cur_conf->beacon_interval ? : ATH_DEFAULT_BINTVAL;
	tsf = FUNC3(sc->sc_ah);
	tsf += FUNC1(sc->sc_ah->config.sw_beacon_response_time);
	tsftu = FUNC0((tsf * ATH_BCBUF) >>32, tsf * ATH_BCBUF);
	slot = (tsftu % (intval * ATH_BCBUF)) / intval;

	FUNC4(common, BEACON, "slot: %d tsf: %llu tsftu: %u\n",
		slot, tsf, tsftu / ATH_BCBUF);

	return slot;
}