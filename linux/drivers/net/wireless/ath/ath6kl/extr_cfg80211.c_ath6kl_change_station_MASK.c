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
struct station_parameters {int sta_flags_set; } ;
struct net_device {int dummy; } ;
struct ath6kl_vif {scalar_t__ nw_type; int /*<<< orphan*/  fw_vif_idx; } ;
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 scalar_t__ AP_NETWORK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CFG80211_STA_AP_MLME_CLIENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NL80211_STA_FLAG_AUTHORIZED ; 
 int /*<<< orphan*/  WMI_AP_MLME_AUTHORIZE ; 
 int /*<<< orphan*/  WMI_AP_MLME_UNAUTHORIZE ; 
 struct ath6kl* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wiphy*,struct station_parameters*,int /*<<< orphan*/ ) ; 
 struct ath6kl_vif* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy, struct net_device *dev,
				 const u8 *mac,
				 struct station_parameters *params)
{
	struct ath6kl *ar = FUNC1(dev);
	struct ath6kl_vif *vif = FUNC4(dev);
	int err;

	if (vif->nw_type != AP_NETWORK)
		return -EOPNOTSUPP;

	err = FUNC3(wiphy, params,
					    CFG80211_STA_AP_MLME_CLIENT);
	if (err)
		return err;

	if (params->sta_flags_set & FUNC0(NL80211_STA_FLAG_AUTHORIZED))
		return FUNC2(ar->wmi, vif->fw_vif_idx,
					      WMI_AP_MLME_AUTHORIZE, mac, 0);
	return FUNC2(ar->wmi, vif->fw_vif_idx,
				      WMI_AP_MLME_UNAUTHORIZE, mac, 0);
}