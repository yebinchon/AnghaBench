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
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr1; } ;
struct ath_softc {int ps_flags; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS ; 
 int PS_WAIT_FOR_BEACON ; 
 int PS_WAIT_FOR_CAB ; 
 int PS_WAIT_FOR_PSPOLL_DATA ; 
 int PS_WAIT_FOR_TX_ACK ; 
 scalar_t__ FUNC0 (struct ath_softc*) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ath_softc *sc, struct sk_buff *skb, bool mybeacon)
{
	struct ieee80211_hdr *hdr;
	struct ath_common *common = FUNC1(sc->sc_ah);

	hdr = (struct ieee80211_hdr *)skb->data;

	/* Process Beacon and CAB receive in PS state */
	if (((sc->ps_flags & PS_WAIT_FOR_BEACON) || FUNC0(sc))
	    && mybeacon) {
		FUNC3(sc, skb);
	} else if ((sc->ps_flags & PS_WAIT_FOR_CAB) &&
		   (FUNC7(hdr->frame_control) ||
		    FUNC6(hdr->frame_control)) &&
		   FUNC8(hdr->addr1) &&
		   !FUNC4(hdr->frame_control)) {
		/*
		 * No more broadcast/multicast frames to be received at this
		 * point.
		 */
		sc->ps_flags &= ~(PS_WAIT_FOR_CAB | PS_WAIT_FOR_BEACON);
		FUNC2(common, PS,
			"All PS CAB frames received, back to sleep\n");
	} else if ((sc->ps_flags & PS_WAIT_FOR_PSPOLL_DATA) &&
		   !FUNC8(hdr->addr1) &&
		   !FUNC5(hdr->frame_control)) {
		sc->ps_flags &= ~PS_WAIT_FOR_PSPOLL_DATA;
		FUNC2(common, PS,
			"Going back to sleep after having received PS-Poll data (0x%lx)\n",
			sc->ps_flags & (PS_WAIT_FOR_BEACON |
					PS_WAIT_FOR_CAB |
					PS_WAIT_FOR_PSPOLL_DATA |
					PS_WAIT_FOR_TX_ACK));
	}
}