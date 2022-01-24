#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; int /*<<< orphan*/  ifidx; TYPE_1__* drvr; struct net_device* ndev; } ;
struct brcmf_event_msg {scalar_t__ event_code; scalar_t__ addr; int /*<<< orphan*/  flags; } ;
struct brcmf_cfg80211_profile {int /*<<< orphan*/  bssid; } ;
struct brcmf_cfg80211_info {int /*<<< orphan*/  vif_disabled; int /*<<< orphan*/  channel; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_7__ {int /*<<< orphan*/  sme_state; struct brcmf_cfg80211_profile profile; } ;
struct TYPE_6__ {struct brcmf_cfg80211_info* config; } ;

/* Variables and functions */
 scalar_t__ BRCMF_E_DEAUTH ; 
 scalar_t__ BRCMF_E_DEAUTH_IND ; 
 scalar_t__ BRCMF_E_DISASSOC_IND ; 
 scalar_t__ BRCMF_E_LINK ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTED ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTING ; 
 int /*<<< orphan*/  CONN ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_cfg80211_info*,struct net_device*,struct brcmf_event_msg const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_cfg80211_info*,struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (struct brcmf_event_msg const*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,struct brcmf_event_msg const*) ; 
 scalar_t__ FUNC8 (struct brcmf_cfg80211_info*,struct brcmf_event_msg const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_event_msg const*) ; 
 int /*<<< orphan*/  FUNC11 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcmf_cfg80211_info*,struct net_device*,struct brcmf_event_msg const*,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,scalar_t__,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC15 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct ieee80211_channel* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32
FUNC22(struct brcmf_if *ifp,
			    const struct brcmf_event_msg *e, void *data)
{
	struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
	struct net_device *ndev = ifp->ndev;
	struct brcmf_cfg80211_profile *profile = &ifp->vif->profile;
	struct ieee80211_channel *chan;
	s32 err = 0;

	if ((e->event_code == BRCMF_E_DEAUTH) ||
	    (e->event_code == BRCMF_E_DEAUTH_IND) ||
	    (e->event_code == BRCMF_E_DISASSOC_IND) ||
	    ((e->event_code == BRCMF_E_LINK) && (!e->flags))) {
		FUNC13(ifp->drvr, ifp->ifidx, (u8 *)e->addr);
	}

	if (FUNC4(ifp->vif)) {
		err = FUNC12(cfg, ndev, e, data);
	} else if (FUNC7(ifp->vif, e)) {
		FUNC1(CONN, "Linkup\n");
		if (FUNC5(ifp->vif)) {
			FUNC2(cfg, ndev, e->addr);
			chan = FUNC18(cfg->wiphy, cfg->channel);
			FUNC19(profile->bssid, e->addr, ETH_ALEN);
			FUNC14(ndev, e->addr, chan, GFP_KERNEL);
			FUNC16(BRCMF_VIF_STATUS_CONNECTING,
				  &ifp->vif->sme_state);
			FUNC21(BRCMF_VIF_STATUS_CONNECTED,
				&ifp->vif->sme_state);
		} else
			FUNC0(cfg, ndev, e, true);
		FUNC11(ifp, true);
	} else if (FUNC6(e)) {
		FUNC1(CONN, "Linkdown\n");
		if (!FUNC5(ifp->vif)) {
			FUNC0(cfg, ndev, e, false);
			FUNC9(ifp->vif,
					FUNC10(e));
			FUNC3(FUNC20(ndev));
			if (ndev != FUNC15(cfg))
				FUNC17(&cfg->vif_disabled);
			FUNC11(ifp, false);
		}
	} else if (FUNC8(cfg, e)) {
		if (FUNC5(ifp->vif))
			FUNC16(BRCMF_VIF_STATUS_CONNECTING,
				  &ifp->vif->sme_state);
		else
			FUNC0(cfg, ndev, e, false);
	}

	return err;
}