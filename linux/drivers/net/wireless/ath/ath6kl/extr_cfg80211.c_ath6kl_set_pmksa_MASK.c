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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_pmksa {int /*<<< orphan*/  pmkid; int /*<<< orphan*/  bssid; } ;
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; } ;
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 struct ath6kl* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ath6kl_vif* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy, struct net_device *netdev,
			    struct cfg80211_pmksa *pmksa)
{
	struct ath6kl *ar = FUNC0(netdev);
	struct ath6kl_vif *vif = FUNC2(netdev);

	return FUNC1(ar->wmi, vif->fw_vif_idx, pmksa->bssid,
				       pmksa->pmkid, true);
}