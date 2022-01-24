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
struct wiphy {int dummy; } ;
struct wil_ring_tx_data {int dot1x_open; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int** ring2cid_tid; struct wil_ring_tx_data* ring_tx_data; } ;
struct station_parameters {int sta_flags_mask; int sta_flags_set; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOLINK ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_AUTHORIZED ; 
 int /*<<< orphan*/  disable_ap_sme ; 
 struct wil6210_vif* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*) ; 
 int FUNC5 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct wil6210_priv* FUNC6 (struct wiphy*) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy,
				       struct net_device *dev,
				       const u8 *mac,
				       struct station_parameters *params)
{
	struct wil6210_vif *vif = FUNC2(dev);
	struct wil6210_priv *wil = FUNC6(wiphy);
	int authorize;
	int cid, i;
	struct wil_ring_tx_data *txdata = NULL;

	FUNC3(wil, "change station %pM mask 0x%x set 0x%x mid %d\n",
		     mac, params->sta_flags_mask, params->sta_flags_set,
		     vif->mid);

	if (!disable_ap_sme) {
		FUNC3(wil, "not supported with AP SME enabled\n");
		return -EOPNOTSUPP;
	}

	if (!(params->sta_flags_mask & FUNC1(NL80211_STA_FLAG_AUTHORIZED)))
		return 0;

	cid = FUNC5(wil, vif->mid, mac);
	if (cid < 0) {
		FUNC4(wil, "station not found\n");
		return -ENOLINK;
	}

	for (i = 0; i < FUNC0(wil->ring2cid_tid); i++)
		if (wil->ring2cid_tid[i][0] == cid) {
			txdata = &wil->ring_tx_data[i];
			break;
		}

	if (!txdata) {
		FUNC4(wil, "ring data not found\n");
		return -ENOLINK;
	}

	authorize = params->sta_flags_set & FUNC1(NL80211_STA_FLAG_AUTHORIZED);
	txdata->dot1x_open = authorize ? 1 : 0;
	FUNC3(wil, "cid %d ring %d authorize %d\n", cid, i,
		     txdata->dot1x_open);

	return 0;
}