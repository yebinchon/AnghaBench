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
struct wireless_dev {int iftype; } ;
struct wil6210_vif {int /*<<< orphan*/  status; } ;
struct wil6210_priv {int dummy; } ;

/* Variables and functions */
#define  NL80211_IFTYPE_MONITOR 130 
#define  NL80211_IFTYPE_P2P_CLIENT 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wireless_dev* FUNC1 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  wil_vif_fwconnecting ; 

__attribute__((used)) static bool
FUNC3(struct wil6210_priv *wil, struct wil6210_vif *vif,
		    bool is_runtime)
{
	struct wireless_dev *wdev = FUNC1(vif);

	switch (wdev->iftype) {
	case NL80211_IFTYPE_MONITOR:
		FUNC2(wil, "Sniffer\n");
		return false;

	/* for STA-like interface, don't runtime suspend */
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_P2P_CLIENT:
		if (FUNC0(wil_vif_fwconnecting, vif->status)) {
			FUNC2(wil, "Delay suspend when connecting\n");
			return false;
		}
		if (is_runtime) {
			FUNC2(wil, "STA-like interface\n");
			return false;
		}
		break;
	/* AP-like interface - can't suspend */
	default:
		FUNC2(wil, "AP-like interface\n");
		return false;
	}

	return true;
}