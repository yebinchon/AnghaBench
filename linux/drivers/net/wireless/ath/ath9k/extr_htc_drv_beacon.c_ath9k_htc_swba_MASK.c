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
struct wmi_event_swba {scalar_t__ beacon_pending; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {scalar_t__ bmisscnt; int /*<<< orphan*/ ** bslot; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  beacon_lock; TYPE_1__ beacon; int /*<<< orphan*/  fatal_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSTUCK ; 
 scalar_t__ BSTUCK_THRESHOLD ; 
 int FUNC0 (struct ath9k_htc_priv*,struct wmi_event_swba*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*,int) ; 
 struct ath_common* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct ath9k_htc_priv *priv,
		    struct wmi_event_swba *swba)
{
	struct ath_common *common = FUNC3(priv->ah);
	int slot;

	if (swba->beacon_pending != 0) {
		priv->beacon.bmisscnt++;
		if (priv->beacon.bmisscnt > BSTUCK_THRESHOLD) {
			FUNC4(common, BSTUCK, "Beacon stuck, HW reset\n");
			FUNC5(priv->hw,
					     &priv->fatal_work);
		}
		return;
	}

	if (priv->beacon.bmisscnt) {
		FUNC4(common, BSTUCK,
			"Resuming beacon xmit after %u misses\n",
			priv->beacon.bmisscnt);
		priv->beacon.bmisscnt = 0;
	}

	slot = FUNC0(priv, swba);
	FUNC6(&priv->beacon_lock);
	if (priv->beacon.bslot[slot] == NULL) {
		FUNC7(&priv->beacon_lock);
		return;
	}
	FUNC7(&priv->beacon_lock);

	FUNC2(priv, slot);
	FUNC1(priv, slot);
}