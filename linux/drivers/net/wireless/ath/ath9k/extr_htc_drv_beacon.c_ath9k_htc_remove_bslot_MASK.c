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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {size_t bslot; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** bslot; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  beacon_lock; TYPE_1__ beacon; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 struct ath_common* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ath9k_htc_priv *priv,
			    struct ieee80211_vif *vif)
{
	struct ath_common *common = FUNC0(priv->ah);
	struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *)vif->drv_priv;

	FUNC2(&priv->beacon_lock);
	priv->beacon.bslot[avp->bslot] = NULL;
	FUNC3(&priv->beacon_lock);

	FUNC1(common, CONFIG, "Removed interface at beacon slot: %d\n",
		avp->bslot);
}