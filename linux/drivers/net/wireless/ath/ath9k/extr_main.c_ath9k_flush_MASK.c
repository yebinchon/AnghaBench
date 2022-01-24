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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sc_ah; } ;
struct ath_common {int /*<<< orphan*/  op_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH_OP_MULTI_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int,int) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
			u32 queues, bool drop)
{
	struct ath_softc *sc = hw->priv;
	struct ath_common *common = FUNC1(sc->sc_ah);

	if (FUNC2()) {
		if (!FUNC5(ATH_OP_MULTI_CHANNEL, &common->op_flags))
			goto flush;

		/*
		 * If MCC is active, extend the flush timeout
		 * and wait for the HW/SW queues to become
		 * empty. This needs to be done outside the
		 * sc->mutex lock to allow the channel scheduler
		 * to switch channel contexts.
		 *
		 * The vif queues have been stopped in mac80211,
		 * so there won't be any incoming frames.
		 */
		FUNC0(hw, queues, drop, true, true);
		return;
	}
flush:
	FUNC3(&sc->mutex);
	FUNC0(hw, queues, drop, true, false);
	FUNC4(&sc->mutex);
}