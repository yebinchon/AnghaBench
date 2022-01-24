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
struct il_vif_priv {int /*<<< orphan*/  ibss_bssid_sta_id; } ;
struct il_priv {scalar_t__ band; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; scalar_t__ drv_priv; } ;

/* Variables and functions */
 scalar_t__ NL80211_BAND_5GHZ ; 
 int /*<<< orphan*/  RATE_1M_PLCP ; 
 int /*<<< orphan*/  RATE_6M_PLCP ; 
 int FUNC0 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct il_priv *il, struct ieee80211_vif *vif,
			   bool add)
{
	struct il_vif_priv *vif_priv = (void *)vif->drv_priv;
	int ret;

	if (add) {
		ret =
		    FUNC0(il, vif->bss_conf.bssid,
					     &vif_priv->ibss_bssid_sta_id);
		if (ret)
			return ret;

		FUNC2(il, vif_priv->ibss_bssid_sta_id,
				(il->band ==
				 NL80211_BAND_5GHZ) ? RATE_6M_PLCP :
				RATE_1M_PLCP);
		FUNC1(il->hw, vif_priv->ibss_bssid_sta_id);

		return 0;
	}

	return FUNC3(il, vif_priv->ibss_bssid_sta_id,
				 vif->bss_conf.bssid);
}