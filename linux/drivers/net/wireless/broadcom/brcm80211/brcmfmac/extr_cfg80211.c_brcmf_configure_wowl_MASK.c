#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wowl_wakeind ;
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct cfg80211_wowlan {size_t n_patterns; scalar_t__ gtk_rekey_failure; scalar_t__ nd_config; TYPE_1__* patterns; scalar_t__ magic_pkt; scalar_t__ disconnect; } ;
struct brcmf_wowl_wakeind_le {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; int /*<<< orphan*/  ndev; } ;
struct TYPE_8__ {int nd_data_completed; int nd_enabled; int active; int /*<<< orphan*/  pre_pmmode; } ;
struct brcmf_cfg80211_info {TYPE_3__ wowl; TYPE_4__* pub; int /*<<< orphan*/  wiphy; } ;
struct TYPE_9__ {int /*<<< orphan*/  bus_if; } ;
struct TYPE_7__ {int /*<<< orphan*/  sme_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  pkt_offset; scalar_t__ mask; int /*<<< orphan*/  pattern_len; scalar_t__ pattern; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_GET_PM ; 
 int /*<<< orphan*/  BRCMF_C_SET_PM ; 
 int /*<<< orphan*/  BRCMF_E_PFN_NET_FOUND ; 
 int /*<<< orphan*/  BRCMF_FEAT_WOWL_ARP_ND ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTED ; 
 size_t BRCMF_WOWL_BCN ; 
 size_t BRCMF_WOWL_DIS ; 
 size_t BRCMF_WOWL_GTK_FAILURE ; 
 size_t BRCMF_WOWL_MAGIC ; 
 size_t BRCMF_WOWL_NET ; 
 size_t BRCMF_WOWL_PFN_FOUND ; 
 size_t BRCMF_WOWL_RETR ; 
 size_t BRCMF_WOWL_UNASSOC ; 
 int /*<<< orphan*/  PM_MAX ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_if*,char*,struct brcmf_wowl_wakeind_le*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_if*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_wowl_nd_results ; 
 int /*<<< orphan*/  FUNC12 (struct brcmf_wowl_wakeind_le*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct brcmf_cfg80211_info *cfg,
				 struct brcmf_if *ifp,
				 struct cfg80211_wowlan *wowl)
{
	u32 wowl_config;
	struct brcmf_wowl_wakeind_le wowl_wakeind;
	u32 i;

	FUNC4(TRACE, "Suspend, wowl config.\n");

	if (!FUNC5(ifp, BRCMF_FEAT_WOWL_ARP_ND))
		FUNC3(ifp, false);
	FUNC6(ifp, BRCMF_C_GET_PM, &cfg->wowl.pre_pmmode);
	FUNC7(ifp, BRCMF_C_SET_PM, PM_MAX);

	wowl_config = 0;
	if (wowl->disconnect)
		wowl_config = BRCMF_WOWL_DIS | BRCMF_WOWL_BCN | BRCMF_WOWL_RETR;
	if (wowl->magic_pkt)
		wowl_config |= BRCMF_WOWL_MAGIC;
	if ((wowl->patterns) && (wowl->n_patterns)) {
		wowl_config |= BRCMF_WOWL_NET;
		for (i = 0; i < wowl->n_patterns; i++) {
			FUNC2(ifp, "add",
				(u8 *)wowl->patterns[i].pattern,
				wowl->patterns[i].pattern_len,
				(u8 *)wowl->patterns[i].mask,
				wowl->patterns[i].pkt_offset);
		}
	}
	if (wowl->nd_config) {
		FUNC1(cfg->wiphy, ifp->ndev,
						wowl->nd_config);
		wowl_config |= BRCMF_WOWL_PFN_FOUND;

		cfg->wowl.nd_data_completed = false;
		cfg->wowl.nd_enabled = true;
		/* Now reroute the event for PFN to the wowl function. */
		FUNC11(cfg->pub, BRCMF_E_PFN_NET_FOUND);
		FUNC10(cfg->pub, BRCMF_E_PFN_NET_FOUND,
				    brcmf_wowl_nd_results);
	}
	if (wowl->gtk_rekey_failure)
		wowl_config |= BRCMF_WOWL_GTK_FAILURE;
	if (!FUNC13(BRCMF_VIF_STATUS_CONNECTED, &ifp->vif->sme_state))
		wowl_config |= BRCMF_WOWL_UNASSOC;

	FUNC12(&wowl_wakeind, "clear", 6);
	FUNC8(ifp, "wowl_wakeind", &wowl_wakeind,
				 sizeof(wowl_wakeind));
	FUNC9(ifp, "wowl", wowl_config);
	FUNC9(ifp, "wowl_activate", 1);
	FUNC0(cfg->pub->bus_if, true);
	cfg->wowl.active = true;
}