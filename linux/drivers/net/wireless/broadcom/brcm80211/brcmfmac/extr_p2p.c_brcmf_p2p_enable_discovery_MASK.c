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
struct brcmf_pub {int dummy; } ;
struct brcmf_p2p_info {int /*<<< orphan*/  status; TYPE_2__* bss_idx; TYPE_1__* cfg; } ;
struct brcmf_cfg80211_vif {int /*<<< orphan*/  ifp; } ;
typedef  int s32 ;
struct TYPE_4__ {struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_3__ {struct brcmf_pub* pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_ENABLED ; 
 int /*<<< orphan*/  BRCMF_P2P_STATUS_ENABLED ; 
 int EPERM ; 
 int /*<<< orphan*/  INFO ; 
 size_t P2PAPI_BSSCFG_DEVICE ; 
 size_t P2PAPI_BSSCFG_PRIMARY ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  WL_P2P_DISC_ST_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct brcmf_p2p_info *p2p)
{
	struct brcmf_pub *drvr = p2p->cfg->pub;
	struct brcmf_cfg80211_vif *vif;
	s32 ret = 0;

	FUNC1(TRACE, "enter\n");
	vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
	if (!vif) {
		FUNC0(drvr, "P2P config device not available\n");
		ret = -EPERM;
		goto exit;
	}

	if (FUNC6(BRCMF_P2P_STATUS_ENABLED, &p2p->status)) {
		FUNC1(INFO, "P2P config device already configured\n");
		goto exit;
	}

	/* Re-initialize P2P Discovery in the firmware */
	vif = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif;
	ret = FUNC3(vif->ifp, "p2p_disc", 1);
	if (ret < 0) {
		FUNC0(drvr, "set p2p_disc error\n");
		goto exit;
	}
	vif = p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif;
	ret = FUNC4(vif->ifp, WL_P2P_DISC_ST_SCAN, 0, 0);
	if (ret < 0) {
		FUNC0(drvr, "unable to set WL_P2P_DISC_ST_SCAN\n");
		goto exit;
	}

	/*
	 * Set wsec to any non-zero value in the discovery bsscfg
	 * to ensure our P2P probe responses have the privacy bit
	 * set in the 802.11 WPA IE. Some peer devices may not
	 * initiate WPS with us if this bit is not set.
	 */
	ret = FUNC2(vif->ifp, "wsec", AES_ENABLED);
	if (ret < 0) {
		FUNC0(drvr, "wsec error %d\n", ret);
		goto exit;
	}

	FUNC5(BRCMF_P2P_STATUS_ENABLED, &p2p->status);
exit:
	return ret;
}