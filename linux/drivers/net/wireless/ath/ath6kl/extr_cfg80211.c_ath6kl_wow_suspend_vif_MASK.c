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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct in_ifaddr {int /*<<< orphan*/  ifa_next; int /*<<< orphan*/  ifa_local; } ;
struct in_device {int /*<<< orphan*/  ifa_list; } ;
struct cfg80211_wowlan {int dummy; } ;
struct ath6kl_vif {scalar_t__ nw_type; int /*<<< orphan*/  fw_vif_idx; int /*<<< orphan*/  ndev; struct ath6kl* ar; int /*<<< orphan*/  flags; } ;
struct ath6kl {int /*<<< orphan*/  wmi; int /*<<< orphan*/ * fw_capabilities; } ;
typedef  int /*<<< orphan*/  ips ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ AP_NETWORK ; 
 int /*<<< orphan*/  ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER ; 
 scalar_t__ ATH6KL_MAX_BMISS_TIME ; 
 int ATH6KL_MAX_WOW_LISTEN_INTL ; 
 int EINVAL ; 
 int MAX_IP_ADDRS ; 
 int /*<<< orphan*/  NETDEV_MCAST_ALL_ON ; 
 int /*<<< orphan*/  WOW_LIST_ID ; 
 scalar_t__ WOW_MAX_FILTERS_PER_LIST ; 
 struct in_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ath6kl*,struct ath6kl_vif*) ; 
 int FUNC9 (struct ath6kl*,struct ath6kl_vif*) ; 
 int FUNC10 (struct ath6kl*,struct ath6kl_vif*,struct cfg80211_wowlan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct in_ifaddr* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct ath6kl_vif *vif,
				  struct cfg80211_wowlan *wow, u32 *filter)
{
	struct ath6kl *ar = vif->ar;
	struct in_device *in_dev;
	struct in_ifaddr *ifa;
	int ret;
	u16 i, bmiss_time;
	__be32 ips[MAX_IP_ADDRS];
	u8 index = 0;

	if (!FUNC14(NETDEV_MCAST_ALL_ON, &vif->flags) &&
	    FUNC14(ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER,
		     ar->fw_capabilities)) {
		ret = FUNC5(vif->ar->wmi,
						vif->fw_vif_idx, false);
		if (ret)
			return ret;
	}

	/* Clear existing WOW patterns */
	for (i = 0; i < WOW_MAX_FILTERS_PER_LIST; i++)
		FUNC3(ar->wmi, vif->fw_vif_idx,
					       WOW_LIST_ID, i);

	/*
	 * Skip the default WOW pattern configuration
	 * if the driver receives any WOW patterns from
	 * the user.
	 */
	if (wow)
		ret = FUNC10(ar, vif, wow, filter);
	else if (vif->nw_type == AP_NETWORK)
		ret = FUNC8(ar, vif);
	else
		ret = FUNC9(ar, vif);

	if (ret)
		return ret;

	FUNC12(vif->ndev);

	if (vif->nw_type != AP_NETWORK) {
		ret = FUNC4(ar->wmi, vif->fw_vif_idx,
						    ATH6KL_MAX_WOW_LISTEN_INTL,
						    0);
		if (ret)
			return ret;

		/* Set listen interval x 15 times as bmiss time */
		bmiss_time = ATH6KL_MAX_WOW_LISTEN_INTL * 15;
		if (bmiss_time > ATH6KL_MAX_BMISS_TIME)
			bmiss_time = ATH6KL_MAX_BMISS_TIME;

		ret = FUNC2(ar->wmi, vif->fw_vif_idx,
					       bmiss_time, 0);
		if (ret)
			return ret;

		ret = FUNC6(ar->wmi, vif->fw_vif_idx,
						0xFFFF, 0, 0xFFFF, 0, 0, 0,
						0, 0, 0, 0);
		if (ret)
			return ret;
	}

	/* Setup own IP addr for ARP agent. */
	in_dev = FUNC0(vif->ndev);
	if (!in_dev)
		return 0;

	ifa = FUNC13(in_dev->ifa_list);
	FUNC11(&ips, 0, sizeof(ips));

	/* Configure IP addr only if IP address count < MAX_IP_ADDRS */
	while (index < MAX_IP_ADDRS && ifa) {
		ips[index] = ifa->ifa_local;
		ifa = FUNC13(ifa->ifa_next);
		index++;
	}

	if (ifa) {
		FUNC1("total IP addr count is exceeding fw limit\n");
		return -EINVAL;
	}

	ret = FUNC7(ar->wmi, vif->fw_vif_idx, ips[0], ips[1]);
	if (ret) {
		FUNC1("fail to setup ip for arp agent\n");
		return ret;
	}

	return ret;
}