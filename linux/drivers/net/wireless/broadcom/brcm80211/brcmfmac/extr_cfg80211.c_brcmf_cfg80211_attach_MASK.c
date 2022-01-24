#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct wiphy {int /*<<< orphan*/  features; TYPE_4__* wowlan; int /*<<< orphan*/  flags; TYPE_3__** bands; int /*<<< orphan*/  regulatory_flags; int /*<<< orphan*/  reg_notifier; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_ops {int /*<<< orphan*/  set_rekey_data; } ;
struct brcmf_pub {struct brcmf_cfg80211_info* config; struct wiphy* wiphy; } ;
struct brcmf_if {struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_7__ {struct net_device* netdev; } ;
struct brcmf_cfg80211_vif {TYPE_1__ wdev; struct brcmf_if* ifp; } ;
struct TYPE_11__ {scalar_t__ io_type; } ;
struct brcmf_cfg80211_info {struct wiphy* wiphy; int /*<<< orphan*/  p2p; struct brcmf_pub* pub; TYPE_5__ d11inf; int /*<<< orphan*/  vif_list; int /*<<< orphan*/  vif_event; } ;
typedef  scalar_t__ s32 ;
struct TYPE_12__ {struct net_device* ndev; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_8__ {int cap; } ;
struct TYPE_9__ {TYPE_2__ ht_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_GET_VERSION ; 
 int /*<<< orphan*/  BRCMF_E_TDLS_PEER_EVENT ; 
 int /*<<< orphan*/  BRCMF_FEAT_SCAN_RANDOM_MAC ; 
 int /*<<< orphan*/  BRCMF_FEAT_TDLS ; 
 int /*<<< orphan*/  BRCMF_FEAT_WOWL_GTK ; 
 int BRCMF_OBSS_COEX_AUTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct brcmf_cfg80211_vif*) ; 
 size_t NL80211_BAND_2GHZ ; 
 int /*<<< orphan*/  NL80211_FEATURE_ND_RANDOM_MAC_ADDR ; 
 int /*<<< orphan*/  NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  REGULATORY_CUSTOM_REG ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIPHY_FLAG_SUPPORTS_TDLS ; 
 int WIPHY_WOWLAN_NET_DETECT ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_pub*,char*,...) ; 
 struct brcmf_cfg80211_vif* FUNC4 (struct brcmf_cfg80211_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  brcmf_cfg80211_reg_notifier ; 
 int /*<<< orphan*/  brcmf_cfg80211_set_rekey_data ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (struct brcmf_cfg80211_info*) ; 
 scalar_t__ FUNC9 (struct brcmf_if*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct brcmf_if*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC11 (struct brcmf_if*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct brcmf_cfg80211_vif*) ; 
 int /*<<< orphan*/  FUNC13 (struct wiphy*) ; 
 scalar_t__ FUNC14 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC15 (struct brcmf_pub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC16 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_notify_tdls_peer_event ; 
 scalar_t__ FUNC17 (struct brcmf_cfg80211_info*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  brcmf_regdom ; 
 scalar_t__ FUNC21 (struct wiphy*,struct brcmf_if*) ; 
 scalar_t__ FUNC22 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct brcmf_cfg80211_info*) ; 
 struct brcmf_cfg80211_info* FUNC26 (int,int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct wiphy*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct wiphy*) ; 
 scalar_t__ FUNC30 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC31 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC32 (struct brcmf_cfg80211_info*) ; 
 scalar_t__ FUNC33 (struct brcmf_cfg80211_info*) ; 

struct brcmf_cfg80211_info *FUNC34(struct brcmf_pub *drvr,
						  struct cfg80211_ops *ops,
						  bool p2pdev_forced)
{
	struct wiphy *wiphy = drvr->wiphy;
	struct net_device *ndev = FUNC16(drvr, 0)->ndev;
	struct brcmf_cfg80211_info *cfg;
	struct brcmf_cfg80211_vif *vif;
	struct brcmf_if *ifp;
	s32 err = 0;
	s32 io_type;
	u16 *cap = NULL;

	if (!ndev) {
		FUNC3(drvr, "ndev is invalid\n");
		return NULL;
	}

	cfg = FUNC26(sizeof(*cfg), GFP_KERNEL);
	if (!cfg) {
		FUNC3(drvr, "Could not allocate wiphy device\n");
		return NULL;
	}

	cfg->wiphy = wiphy;
	cfg->pub = drvr;
	FUNC24(&cfg->vif_event);
	FUNC0(&cfg->vif_list);

	vif = FUNC4(cfg, NL80211_IFTYPE_STATION);
	if (FUNC1(vif))
		goto wiphy_out;

	ifp = FUNC27(ndev);
	vif->ifp = ifp;
	vif->wdev.netdev = ndev;
	ndev->ieee80211_ptr = &vif->wdev;
	FUNC2(ndev, FUNC29(cfg->wiphy));

	err = FUNC33(cfg);
	if (err) {
		FUNC3(drvr, "Failed to init iwm_priv (%d)\n", err);
		FUNC12(vif);
		goto wiphy_out;
	}
	ifp->vif = vif;

	/* determine d11 io type before wiphy setup */
	err = FUNC10(ifp, BRCMF_C_GET_VERSION, &io_type);
	if (err) {
		FUNC3(drvr, "Failed to get D11 version (%d)\n", err);
		goto priv_out;
	}
	cfg->d11inf.io_type = (u8)io_type;
	FUNC23(&cfg->d11inf);

	/* regulatory notifer below needs access to cfg so
	 * assign it now.
	 */
	drvr->config = cfg;

	err = FUNC21(wiphy, ifp);
	if (err < 0)
		goto priv_out;

	FUNC7(INFO, "Registering custom regulatory\n");
	wiphy->reg_notifier = brcmf_cfg80211_reg_notifier;
	wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;
	FUNC28(wiphy, &brcmf_regdom);

	/* firmware defaults to 40MHz disabled in 2G band. We signal
	 * cfg80211 here that we do and have it decide we can enable
	 * it. But first check if device does support 2G operation.
	 */
	if (wiphy->bands[NL80211_BAND_2GHZ]) {
		cap = &wiphy->bands[NL80211_BAND_2GHZ]->ht_cap.cap;
		*cap |= IEEE80211_HT_CAP_SUP_WIDTH_20_40;
	}
#ifdef CONFIG_PM
	if (brcmf_feat_is_enabled(ifp, BRCMF_FEAT_WOWL_GTK))
		ops->set_rekey_data = brcmf_cfg80211_set_rekey_data;
#endif
	err = FUNC30(wiphy);
	if (err < 0) {
		FUNC3(drvr, "Could not register wiphy device (%d)\n", err);
		goto priv_out;
	}

	err = FUNC22(cfg);
	if (err) {
		FUNC3(drvr, "Setting wiphy bands failed (%d)\n", err);
		goto wiphy_unreg_out;
	}

	/* If cfg80211 didn't disable 40MHz HT CAP in wiphy_register(),
	 * setup 40MHz in 2GHz band and enable OBSS scanning.
	 */
	if (cap && (*cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40)) {
		err = FUNC8(cfg);
		if (!err)
			err = FUNC11(ifp, "obss_coex",
						      BRCMF_OBSS_COEX_AUTO);
		else
			*cap &= ~IEEE80211_HT_CAP_SUP_WIDTH_20_40;
	}

	err = FUNC14(ifp);
	if (err) {
		FUNC3(drvr, "FWEH activation failed (%d)\n", err);
		goto wiphy_unreg_out;
	}

	err = FUNC17(cfg, p2pdev_forced);
	if (err) {
		FUNC3(drvr, "P2P initialisation failed (%d)\n", err);
		goto wiphy_unreg_out;
	}
	err = FUNC5(cfg);
	if (err) {
		FUNC3(drvr, "BT-coex initialisation failed (%d)\n", err);
		FUNC18(&cfg->p2p);
		goto wiphy_unreg_out;
	}
	err = FUNC19(cfg);
	if (err) {
		FUNC3(drvr, "PNO initialisation failed (%d)\n", err);
		FUNC6(cfg);
		FUNC18(&cfg->p2p);
		goto wiphy_unreg_out;
	}

	if (FUNC9(ifp, BRCMF_FEAT_TDLS)) {
		err = FUNC11(ifp, "tdls_enable", 1);
		if (err) {
			FUNC7(INFO, "TDLS not enabled (%d)\n", err);
			wiphy->flags &= ~WIPHY_FLAG_SUPPORTS_TDLS;
		} else {
			FUNC15(cfg->pub, BRCMF_E_TDLS_PEER_EVENT,
					    brcmf_notify_tdls_peer_event);
		}
	}

	/* (re-) activate FWEH event handling */
	err = FUNC14(ifp);
	if (err) {
		FUNC3(drvr, "FWEH activation failed (%d)\n", err);
		goto detach;
	}

	/* Fill in some of the advertised nl80211 supported features */
	if (FUNC9(ifp, BRCMF_FEAT_SCAN_RANDOM_MAC)) {
		wiphy->features |= NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR;
#ifdef CONFIG_PM
		if (wiphy->wowlan &&
		    wiphy->wowlan->flags & WIPHY_WOWLAN_NET_DETECT)
			wiphy->features |= NL80211_FEATURE_ND_RANDOM_MAC_ADDR;
#endif
	}

	return cfg;

detach:
	FUNC20(cfg);
	FUNC6(cfg);
	FUNC18(&cfg->p2p);
wiphy_unreg_out:
	FUNC31(cfg->wiphy);
priv_out:
	FUNC32(cfg);
	FUNC12(vif);
	ifp->vif = NULL;
wiphy_out:
	FUNC13(wiphy);
	FUNC25(cfg);
	return NULL;
}