#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; } ;
struct TYPE_5__ {scalar_t__ beacon_interval; } ;
struct TYPE_6__ {TYPE_2__ beacon; } ;
struct TYPE_4__ {TYPE_3__ chan; } ;
struct ath_softc {int ps_flags; TYPE_3__* cur_chan; TYPE_1__ offchannel; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS ; 
 int PS_BEACON_SYNC ; 
 int PS_WAIT_FOR_BEACON ; 
 int PS_WAIT_FOR_CAB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct ath_softc *sc, struct sk_buff *skb)
{
	struct ath_common *common = FUNC1(sc->sc_ah);
	bool skip_beacon = false;

	if (skb->len < 24 + 8 + 2 + 2)
		return;

	sc->ps_flags &= ~PS_WAIT_FOR_BEACON;

	if (sc->ps_flags & PS_BEACON_SYNC) {
		sc->ps_flags &= ~PS_BEACON_SYNC;
		FUNC6(common, PS,
			"Reconfigure beacon timers based on synchronized timestamp\n");

#ifdef CONFIG_ATH9K_CHANNEL_CONTEXT
		if (ath9k_is_chanctx_enabled()) {
			if (sc->cur_chan == &sc->offchannel.chan)
				skip_beacon = true;
		}
#endif

		if (!skip_beacon &&
		    !(FUNC0(sc->cur_chan->beacon.beacon_interval == 0)))
			FUNC4(sc);

		FUNC3(sc);
	}

	if (FUNC5(skb)) {
		/*
		 * Remain awake waiting for buffered broadcast/multicast
		 * frames. If the last broadcast/multicast frame is not
		 * received properly, the next beacon frame will work as
		 * a backup trigger for returning into NETWORK SLEEP state,
		 * so we are waiting for it as well.
		 */
		FUNC6(common, PS,
			"Received DTIM beacon indicating buffered broadcast/multicast frame(s)\n");
		sc->ps_flags |= PS_WAIT_FOR_CAB | PS_WAIT_FOR_BEACON;
		return;
	}

	if (sc->ps_flags & PS_WAIT_FOR_CAB) {
		/*
		 * This can happen if a broadcast frame is dropped or the AP
		 * fails to send a frame indicating that all CAB frames have
		 * been delivered.
		 */
		sc->ps_flags &= ~PS_WAIT_FOR_CAB;
		FUNC6(common, PS, "PS wait for CAB frames timed out\n");
	}
}