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
struct TYPE_5__ {int /*<<< orphan*/  reset_duration; } ;
struct TYPE_4__ {int /*<<< orphan*/  smps; } ;
struct il_priv {int /*<<< orphan*/ * ieee_rates; TYPE_3__* ops; TYPE_2__ force_reset; int /*<<< orphan*/  missed_beacon_threshold; TYPE_1__ current_ht_config; int /*<<< orphan*/  iw_mode; int /*<<< orphan*/  band; int /*<<< orphan*/ * ieee_channels; int /*<<< orphan*/  mutex; int /*<<< orphan*/  free_frames; int /*<<< orphan*/  hcmd_lock; int /*<<< orphan*/  sta_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_rxon_chain ) (struct il_priv*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_SMPS_STATIC ; 
 int /*<<< orphan*/  IL_DELAY_NEXT_FORCE_FW_RELOAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IL_MISSED_BEACON_THRESHOLD_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int FUNC4 (struct il_priv*) ; 
 int FUNC5 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*) ; 

__attribute__((used)) static int
FUNC10(struct il_priv *il)
{
	int ret;

	FUNC8(&il->sta_lock);
	FUNC8(&il->hcmd_lock);

	FUNC1(&il->free_frames);

	FUNC7(&il->mutex);

	il->ieee_channels = NULL;
	il->ieee_rates = NULL;
	il->band = NL80211_BAND_2GHZ;

	il->iw_mode = NL80211_IFTYPE_STATION;
	il->current_ht_config.smps = IEEE80211_SMPS_STATIC;
	il->missed_beacon_threshold = IL_MISSED_BEACON_THRESHOLD_DEF;

	/* initialize force reset */
	il->force_reset.reset_duration = IL_DELAY_NEXT_FORCE_FW_RELOAD;

	/* Choose which receivers/antennas to use */
	if (il->ops->set_rxon_chain)
		il->ops->set_rxon_chain(il);

	FUNC6(il);

	ret = FUNC4(il);
	if (ret) {
		FUNC0("initializing regulatory failed: %d\n", ret);
		goto err;
	}

	ret = FUNC5(il);
	if (ret) {
		FUNC0("initializing geos failed: %d\n", ret);
		goto err_free_channel_map;
	}
	FUNC2(il, il->ieee_rates);

	return 0;

err_free_channel_map:
	FUNC3(il);
err:
	return ret;
}