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
struct brcmf_p2p_info {TYPE_1__* bss_idx; } ;
struct brcmf_cfg80211_vif {int /*<<< orphan*/  ifp; } ;
struct TYPE_2__ {struct brcmf_cfg80211_vif* vif; } ;

/* Variables and functions */
 size_t P2PAPI_BSSCFG_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_p2p_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_p2p_info*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct brcmf_p2p_info *p2p)
{
	struct brcmf_cfg80211_vif *vif;

	vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
	if (vif != NULL) {
		FUNC0(vif->ifp);
		FUNC1(p2p);
		FUNC2(vif->ifp, false);
	}
	/* just set it all to zero */
	FUNC3(p2p, 0, sizeof(*p2p));
}