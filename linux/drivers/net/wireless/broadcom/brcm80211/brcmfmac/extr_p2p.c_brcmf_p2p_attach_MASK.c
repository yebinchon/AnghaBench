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
struct brcmf_pub {int dummy; } ;
struct brcmf_p2p_info {int p2pdev_dynamically; TYPE_1__* bss_idx; struct brcmf_cfg80211_info* cfg; } ;
struct brcmf_if {int /*<<< orphan*/  vif; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; struct brcmf_p2p_info p2p; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {int /*<<< orphan*/  vif; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 size_t P2PAPI_BSSCFG_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pub*,char*) ; 
 struct brcmf_if* FUNC3 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct brcmf_p2p_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

s32 FUNC5(struct brcmf_cfg80211_info *cfg, bool p2pdev_forced)
{
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_p2p_info *p2p;
	struct brcmf_if *pri_ifp;
	s32 err = 0;
	void *err_ptr;

	p2p = &cfg->p2p;
	p2p->cfg = cfg;

	pri_ifp = FUNC3(cfg->pub, 0);
	p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif = pri_ifp->vif;

	if (p2pdev_forced) {
		err_ptr = FUNC4(p2p, NULL, NULL);
		if (FUNC0(err_ptr)) {
			FUNC2(drvr, "P2P device creation failed.\n");
			err = FUNC1(err_ptr);
		}
	} else {
		p2p->p2pdev_dynamically = true;
	}
	return err;
}