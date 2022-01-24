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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_7__ {int /*<<< orphan*/  ampdu_params_info; int /*<<< orphan*/  cap_info; } ;
struct mwifiex_uap_bss_param {TYPE_3__ ht_cap; } ;
struct mwifiex_private {int ap_11n_enabled; TYPE_2__* adapter; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tail_len; int /*<<< orphan*/  tail; } ;
struct cfg80211_ap_settings {TYPE_1__ beacon; } ;
struct TYPE_6__ {int /*<<< orphan*/  fw_cap_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MWIFIEX_DEF_AMPDU ; 
 int /*<<< orphan*/  MWIFIEX_DEF_HT_CAP ; 
 int /*<<< orphan*/  WLAN_EID_HT_CAPABILITY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct mwifiex_private *priv,
		      struct mwifiex_uap_bss_param *bss_cfg,
		      struct cfg80211_ap_settings *params)
{
	const u8 *ht_ie;

	if (!FUNC0(priv->adapter->fw_cap_info))
		return;

	ht_ie = FUNC1(WLAN_EID_HT_CAPABILITY, params->beacon.tail,
				 params->beacon.tail_len);
	if (ht_ie) {
		FUNC3(&bss_cfg->ht_cap, ht_ie + 2,
		       sizeof(struct ieee80211_ht_cap));
		priv->ap_11n_enabled = 1;
	} else {
		FUNC4(&bss_cfg->ht_cap, 0, sizeof(struct ieee80211_ht_cap));
		bss_cfg->ht_cap.cap_info = FUNC2(MWIFIEX_DEF_HT_CAP);
		bss_cfg->ht_cap.ampdu_params_info = MWIFIEX_DEF_AMPDU;
	}

	return;
}