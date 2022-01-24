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
struct mib_mac_mgmt {int /*<<< orphan*/  country_string; int /*<<< orphan*/  multi_domain_capability_enabled; int /*<<< orphan*/  multi_domain_capability_implemented; int /*<<< orphan*/  res; int /*<<< orphan*/  ibss_change; int /*<<< orphan*/  power_mgmt_mode; int /*<<< orphan*/  current_bss_type; int /*<<< orphan*/  current_essid; int /*<<< orphan*/  current_bssid; int /*<<< orphan*/  CFP_period; int /*<<< orphan*/  DTIM_period; int /*<<< orphan*/  privacy_option_implemented; int /*<<< orphan*/  CFP_mode; int /*<<< orphan*/  ATIM_window; int /*<<< orphan*/  station_id; int /*<<< orphan*/  medium_occupancy_limit; int /*<<< orphan*/  CFP_max_duration; int /*<<< orphan*/  beacon_period; } ;
struct at76_priv {TYPE_1__* hw; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MIB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  MIB_MAC_MGMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mib_mac_mgmt*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mib_mac_mgmt*) ; 
 struct mib_mac_mgmt* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct at76_priv *priv)
{
	int ret;
	struct mib_mac_mgmt *m = FUNC3(sizeof(struct mib_mac_mgmt),
					 GFP_KERNEL);

	if (!m)
		return;

	ret = FUNC1(priv->udev, MIB_MAC_MGMT, m,
			   sizeof(struct mib_mac_mgmt));
	if (ret < 0) {
		FUNC5(priv->hw->wiphy,
			  "at76_get_mib (MAC_MGMT) failed: %d\n", ret);
		goto exit;
	}

	FUNC0(DBG_MIB, "%s: MIB MAC_MGMT: beacon_period %d CFP_max_duration "
		 "%d medium_occupancy_limit %d station_id 0x%x ATIM_window %d "
		 "CFP_mode %d privacy_opt_impl %d DTIM_period %d CFP_period %d "
		 "current_bssid %pM current_essid %*phD current_bss_type %d "
		 "pm_mode %d ibss_change %d res %d "
		 "multi_domain_capability_implemented %d "
		 "international_roaming %d country_string %.3s",
		 FUNC6(priv->hw->wiphy), FUNC4(m->beacon_period),
		 FUNC4(m->CFP_max_duration),
		 FUNC4(m->medium_occupancy_limit),
		 FUNC4(m->station_id), FUNC4(m->ATIM_window),
		 m->CFP_mode, m->privacy_option_implemented, m->DTIM_period,
		 m->CFP_period, m->current_bssid,
		 IW_ESSID_MAX_SIZE, m->current_essid,
		 m->current_bss_type, m->power_mgmt_mode, m->ibss_change,
		 m->res, m->multi_domain_capability_implemented,
		 m->multi_domain_capability_enabled, m->country_string);
exit:
	FUNC2(m);
}