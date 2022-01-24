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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_SCANNING ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif,
				const u8 *mac_addr)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC0(sc->sc_ah);
	FUNC1(ATH_OP_SCANNING, &common->op_flags);
}