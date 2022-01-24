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
typedef  int /*<<< orphan*/  u16 ;
struct brcmf_if {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;
struct brcmf_cfg80211_vif {TYPE_1__ wdev; } ;
struct brcmf_cfg80211_info {int /*<<< orphan*/  pub; struct brcmf_btcoex_info* btcoex; } ;
struct brcmf_btcoex_info {struct brcmf_cfg80211_vif* vif; int /*<<< orphan*/  bt_state; int /*<<< orphan*/  timeout; } ;
typedef  enum brcmf_btcoex_mode { ____Placeholder_brcmf_btcoex_mode } brcmf_btcoex_mode ;

/* Variables and functions */
#define  BRCMF_BTCOEX_DISABLED 129 
#define  BRCMF_BTCOEX_ENABLED 128 
 int /*<<< orphan*/  BRCMF_BT_DHCP_IDLE ; 
 int EBUSY ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_btcoex_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_btcoex_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct brcmf_if* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct brcmf_cfg80211_info* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct brcmf_cfg80211_vif *vif,
			  enum brcmf_btcoex_mode mode, u16 duration)
{
	struct brcmf_cfg80211_info *cfg = FUNC6(vif->wdev.wiphy);
	struct brcmf_btcoex_info *btci = cfg->btcoex;
	struct brcmf_if *ifp = FUNC4(cfg->pub, 0);

	switch (mode) {
	case BRCMF_BTCOEX_DISABLED:
		FUNC3(INFO, "DHCP session starts\n");
		if (btci->bt_state != BRCMF_BT_DHCP_IDLE)
			return -EBUSY;
		/* Start BT timer only for SCO connection */
		if (FUNC2(ifp)) {
			btci->timeout = FUNC5(duration);
			btci->vif = vif;
			FUNC1(btci);
		}
		break;

	case BRCMF_BTCOEX_ENABLED:
		FUNC3(INFO, "DHCP session ends\n");
		if (btci->bt_state != BRCMF_BT_DHCP_IDLE &&
		    vif == btci->vif) {
			FUNC0(btci);
		}
		break;
	default:
		FUNC3(INFO, "Unknown mode, ignored\n");
	}
	return 0;
}