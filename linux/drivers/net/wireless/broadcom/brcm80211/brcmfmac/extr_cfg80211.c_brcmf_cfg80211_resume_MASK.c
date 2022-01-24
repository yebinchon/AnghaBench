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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  ndev; } ;
struct TYPE_2__ {int active; int nd_enabled; int /*<<< orphan*/  pre_pmmode; } ;
struct brcmf_cfg80211_info {TYPE_1__ wowl; int /*<<< orphan*/  pub; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_PM ; 
 int /*<<< orphan*/  BRCMF_E_PFN_NET_FOUND ; 
 int /*<<< orphan*/  BRCMF_FEAT_WOWL_ARP_ND ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_if*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_notify_sched_scan_results ; 
 int /*<<< orphan*/  FUNC9 (struct wiphy*,struct brcmf_if*) ; 
 struct net_device* FUNC10 (struct brcmf_cfg80211_info*) ; 
 struct brcmf_if* FUNC11 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC12 (struct wiphy*) ; 

__attribute__((used)) static s32 FUNC13(struct wiphy *wiphy)
{
	struct brcmf_cfg80211_info *cfg = FUNC12(wiphy);
	struct net_device *ndev = FUNC10(cfg);
	struct brcmf_if *ifp = FUNC11(ndev);

	FUNC3(TRACE, "Enter\n");

	if (cfg->wowl.active) {
		FUNC9(wiphy, ifp);
		FUNC6(ifp, "wowl_clear", 0);
		FUNC1(ifp, "clr", NULL, 0, NULL, 0);
		if (!FUNC4(ifp, BRCMF_FEAT_WOWL_ARP_ND))
			FUNC2(ifp, true);
		FUNC5(ifp, BRCMF_C_SET_PM,
				      cfg->wowl.pre_pmmode);
		cfg->wowl.active = false;
		if (cfg->wowl.nd_enabled) {
			FUNC0(cfg->wiphy, ifp->ndev, 0);
			FUNC8(cfg->pub, BRCMF_E_PFN_NET_FOUND);
			FUNC7(cfg->pub, BRCMF_E_PFN_NET_FOUND,
					    brcmf_notify_sched_scan_results);
			cfg->wowl.nd_enabled = false;
		}
	}
	return 0;
}