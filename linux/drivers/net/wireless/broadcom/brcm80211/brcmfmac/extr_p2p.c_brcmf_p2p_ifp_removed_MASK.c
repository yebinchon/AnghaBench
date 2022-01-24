#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct brcmf_if {struct brcmf_cfg80211_vif* vif; } ;
struct brcmf_cfg80211_vif {int /*<<< orphan*/  wdev; } ;
struct TYPE_4__ {TYPE_1__* bss_idx; } ;
struct brcmf_cfg80211_info {TYPE_2__ p2p; } ;
struct TYPE_3__ {int /*<<< orphan*/ * vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 size_t P2PAPI_BSSCFG_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_cfg80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct brcmf_cfg80211_info* FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct brcmf_if *ifp, bool rtnl_locked)
{
	struct brcmf_cfg80211_info *cfg;
	struct brcmf_cfg80211_vif *vif;

	FUNC0(INFO, "P2P: device interface removed\n");
	vif = ifp->vif;
	cfg = FUNC5(&vif->wdev);
	cfg->p2p.bss_idx[P2PAPI_BSSCFG_DEVICE].vif = NULL;
	if (!rtnl_locked)
		FUNC3();
	FUNC2(&vif->wdev);
	if (!rtnl_locked)
		FUNC4();
	FUNC1(vif);
}