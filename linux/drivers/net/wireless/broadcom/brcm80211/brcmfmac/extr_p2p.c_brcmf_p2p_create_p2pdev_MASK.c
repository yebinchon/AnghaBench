#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct wireless_dev {int /*<<< orphan*/  address; } ;
struct wiphy {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  act_frm_scan; int /*<<< orphan*/  afx_work; } ;
struct brcmf_p2p_info {int /*<<< orphan*/  wait_next_af; TYPE_2__ afx_hdl; int /*<<< orphan*/  send_af_done; int /*<<< orphan*/  dev_addr; TYPE_1__* bss_idx; TYPE_3__* cfg; } ;
struct brcmf_if {scalar_t__ bsscfgidx; int /*<<< orphan*/ * mac_addr; } ;
struct brcmf_cfg80211_vif {struct wireless_dev wdev; struct brcmf_if* ifp; } ;
struct TYPE_8__ {struct brcmf_pub* pub; } ;
struct TYPE_6__ {struct brcmf_cfg80211_vif* vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_E_IF_ADD ; 
 int /*<<< orphan*/  BRCMF_VIF_EVENT_TIMEOUT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOSPC ; 
 struct wireless_dev* FUNC0 (int) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct brcmf_cfg80211_vif*) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_P2P_DEVICE ; 
 size_t P2PAPI_BSSCFG_DEVICE ; 
 size_t P2PAPI_BSSCFG_PRIMARY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_pub*,char*) ; 
 struct brcmf_cfg80211_vif* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct brcmf_cfg80211_vif*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct brcmf_if*,char*,scalar_t__*) ; 
 int FUNC9 (struct brcmf_if*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_cfg80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  brcmf_p2p_afx_handler ; 
 int /*<<< orphan*/  FUNC12 (struct brcmf_p2p_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct brcmf_if*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct wireless_dev *FUNC17(struct brcmf_p2p_info *p2p,
						    struct wiphy *wiphy,
						    u8 *addr)
{
	struct brcmf_pub *drvr = p2p->cfg->pub;
	struct brcmf_cfg80211_vif *p2p_vif;
	struct brcmf_if *p2p_ifp;
	struct brcmf_if *pri_ifp;
	int err;
	u32 bsscfgidx;

	if (p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif)
		return FUNC0(-ENOSPC);

	p2p_vif = FUNC5(p2p->cfg, NL80211_IFTYPE_P2P_DEVICE);
	if (FUNC2(p2p_vif)) {
		FUNC4(drvr, "could not create discovery vif\n");
		return (struct wireless_dev *)p2p_vif;
	}

	pri_ifp = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif->ifp;

	/* firmware requires unique mac address for p2pdev interface */
	if (addr && FUNC14(addr, pri_ifp->mac_addr)) {
		FUNC4(drvr, "discovery vif must be different from primary interface\n");
		return FUNC0(-EINVAL);
	}

	FUNC12(p2p, addr);
	FUNC13(pri_ifp, p2p->dev_addr);

	FUNC6(p2p->cfg, p2p_vif);
	FUNC11(pri_ifp, true);

	/* Initialize P2P Discovery in the firmware */
	err = FUNC9(pri_ifp, "p2p_disc", 1);
	if (err < 0) {
		FUNC4(drvr, "set p2p_disc error\n");
		FUNC11(pri_ifp, false);
		FUNC6(p2p->cfg, NULL);
		goto fail;
	}

	/* wait for firmware event */
	err = FUNC7(p2p->cfg, BRCMF_E_IF_ADD,
					    BRCMF_VIF_EVENT_TIMEOUT);
	FUNC6(p2p->cfg, NULL);
	FUNC11(pri_ifp, false);
	if (!err) {
		FUNC4(drvr, "timeout occurred\n");
		err = -EIO;
		goto fail;
	}

	/* discovery interface created */
	p2p_ifp = p2p_vif->ifp;
	p2p->bss_idx[P2PAPI_BSSCFG_DEVICE].vif = p2p_vif;
	FUNC16(p2p_ifp->mac_addr, p2p->dev_addr, ETH_ALEN);
	FUNC16(&p2p_vif->wdev.address, p2p->dev_addr, sizeof(p2p->dev_addr));

	/* verify bsscfg index for P2P discovery */
	err = FUNC8(pri_ifp, "p2p_dev", &bsscfgidx);
	if (err < 0) {
		FUNC4(drvr, "retrieving discover bsscfg index failed\n");
		goto fail;
	}

	FUNC3(p2p_ifp->bsscfgidx != bsscfgidx);

	FUNC15(&p2p->send_af_done);
	FUNC1(&p2p->afx_hdl.afx_work, brcmf_p2p_afx_handler);
	FUNC15(&p2p->afx_hdl.act_frm_scan);
	FUNC15(&p2p->wait_next_af);

	return &p2p_vif->wdev;

fail:
	FUNC10(p2p_vif);
	return FUNC0(err);
}