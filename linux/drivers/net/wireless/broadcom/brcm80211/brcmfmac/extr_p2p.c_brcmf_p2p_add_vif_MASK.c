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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int /*<<< orphan*/  macaddr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; TYPE_3__* ndev; } ;
struct brcmf_cfg80211_vif {struct brcmf_if* ifp; } ;
struct TYPE_9__ {TYPE_1__* bss_idx; int /*<<< orphan*/  int_addr; } ;
struct brcmf_cfg80211_info {TYPE_4__ p2p; struct brcmf_pub* pub; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef  enum brcmf_fil_p2p_if_types { ____Placeholder_brcmf_fil_p2p_if_types } brcmf_fil_p2p_if_types ;
struct TYPE_8__ {unsigned char name_assign_type; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {struct wireless_dev wdev; } ;
struct TYPE_6__ {struct brcmf_cfg80211_vif* vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_SCB_TIMEOUT ; 
 int /*<<< orphan*/  BRCMF_E_IF_ADD ; 
 int BRCMF_FIL_P2P_IF_CLIENT ; 
 int BRCMF_FIL_P2P_IF_GO ; 
 int /*<<< orphan*/  BRCMF_SCB_TIMEOUT_VALUE ; 
 int /*<<< orphan*/  BRCMF_VIF_EVENT_TIMEOUT ; 
 int EBUSY ; 
 int EIO ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 struct wireless_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ FUNC1 (struct brcmf_cfg80211_vif*) ; 
#define  NL80211_IFTYPE_P2P_CLIENT 130 
#define  NL80211_IFTYPE_P2P_DEVICE 129 
#define  NL80211_IFTYPE_P2P_GO 128 
 size_t P2PAPI_BSSCFG_CONNECTION ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pub*,char*) ; 
 struct brcmf_cfg80211_vif* FUNC3 (struct brcmf_cfg80211_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_cfg80211_info*,struct brcmf_cfg80211_vif*) ; 
 scalar_t__ FUNC5 (struct brcmf_cfg80211_info*) ; 
 int FUNC6 (struct brcmf_cfg80211_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_if*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_cfg80211_vif*) ; 
 int FUNC11 (struct brcmf_if*,int) ; 
 struct wireless_dev* FUNC12 (TYPE_4__*,struct wiphy*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_4__*,struct brcmf_if*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 struct brcmf_if* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*,int) ; 
 struct brcmf_cfg80211_info* FUNC18 (struct wiphy*) ; 

struct wireless_dev *FUNC19(struct wiphy *wiphy, const char *name,
				       unsigned char name_assign_type,
				       enum nl80211_iftype type,
				       struct vif_params *params)
{
	struct brcmf_cfg80211_info *cfg = FUNC18(wiphy);
	struct brcmf_if *ifp = FUNC16(FUNC14(cfg));
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_cfg80211_vif *vif;
	enum brcmf_fil_p2p_if_types iftype;
	int err;

	if (FUNC5(cfg))
		return FUNC0(-EBUSY);

	FUNC7(INFO, "adding vif \"%s\" (type=%d)\n", name, type);

	switch (type) {
	case NL80211_IFTYPE_P2P_CLIENT:
		iftype = BRCMF_FIL_P2P_IF_CLIENT;
		break;
	case NL80211_IFTYPE_P2P_GO:
		iftype = BRCMF_FIL_P2P_IF_GO;
		break;
	case NL80211_IFTYPE_P2P_DEVICE:
		return FUNC12(&cfg->p2p, wiphy,
					       params->macaddr);
	default:
		return FUNC0(-EOPNOTSUPP);
	}

	vif = FUNC3(cfg, type);
	if (FUNC1(vif))
		return (struct wireless_dev *)vif;
	FUNC4(cfg, vif);

	err = FUNC13(&cfg->p2p, ifp, cfg->p2p.int_addr,
				       iftype);
	if (err) {
		FUNC4(cfg, NULL);
		goto fail;
	}

	/* wait for firmware event */
	err = FUNC6(cfg, BRCMF_E_IF_ADD,
					    BRCMF_VIF_EVENT_TIMEOUT);
	FUNC4(cfg, NULL);
	if (!err) {
		FUNC2(drvr, "timeout occurred\n");
		err = -EIO;
		goto fail;
	}

	/* interface created in firmware */
	ifp = vif->ifp;
	if (!ifp) {
		FUNC2(drvr, "no if pointer provided\n");
		err = -ENOENT;
		goto fail;
	}

	FUNC17(ifp->ndev->name, name, sizeof(ifp->ndev->name) - 1);
	ifp->ndev->name_assign_type = name_assign_type;
	err = FUNC11(ifp, true);
	if (err) {
		FUNC2(drvr, "Registering netdevice failed\n");
		FUNC15(ifp->ndev);
		goto fail;
	}

	cfg->p2p.bss_idx[P2PAPI_BSSCFG_CONNECTION].vif = vif;
	/* Disable firmware roaming for P2P interface  */
	FUNC9(ifp, "roam_off", 1);
	if (iftype == BRCMF_FIL_P2P_IF_GO) {
		/* set station timeout for p2p */
		FUNC8(ifp, BRCMF_C_SET_SCB_TIMEOUT,
				      BRCMF_SCB_TIMEOUT_VALUE);
	}
	return &ifp->vif->wdev;

fail:
	FUNC10(vif);
	return FUNC0(err);
}