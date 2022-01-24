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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_1__* vif; TYPE_2__* ndev; } ;
struct brcmf_cfg80211_vif {struct brcmf_if* ifp; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct wireless_dev wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_E_IF_ADD ; 
 int /*<<< orphan*/  BRCMF_VIF_EVENT_TIMEOUT ; 
 int EBUSY ; 
 int EIO ; 
 int ENOENT ; 
 struct wireless_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ FUNC1 (struct brcmf_cfg80211_vif*) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_pub*,char*) ; 
 struct brcmf_cfg80211_vif* FUNC3 (struct brcmf_cfg80211_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_cfg80211_info*,struct brcmf_cfg80211_vif*) ; 
 int FUNC5 (struct brcmf_if*) ; 
 scalar_t__ FUNC6 (struct brcmf_cfg80211_info*) ; 
 int FUNC7 (struct brcmf_cfg80211_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_cfg80211_vif*) ; 
 int FUNC10 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 struct brcmf_if* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,int) ; 
 struct brcmf_cfg80211_info* FUNC15 (struct wiphy*) ; 

__attribute__((used)) static
struct wireless_dev *FUNC16(struct wiphy *wiphy, const char *name,
				      struct vif_params *params)
{
	struct brcmf_cfg80211_info *cfg = FUNC15(wiphy);
	struct brcmf_if *ifp = FUNC13(FUNC11(cfg));
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_cfg80211_vif *vif;
	int err;

	if (FUNC6(cfg))
		return FUNC0(-EBUSY);

	FUNC8(INFO, "Adding vif \"%s\"\n", name);

	vif = FUNC3(cfg, NL80211_IFTYPE_AP);
	if (FUNC1(vif))
		return (struct wireless_dev *)vif;

	FUNC4(cfg, vif);

	err = FUNC5(ifp);
	if (err) {
		FUNC4(cfg, NULL);
		goto fail;
	}

	/* wait for firmware event */
	err = FUNC7(cfg, BRCMF_E_IF_ADD,
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

	FUNC14(ifp->ndev->name, name, sizeof(ifp->ndev->name) - 1);
	err = FUNC10(ifp, true);
	if (err) {
		FUNC2(drvr, "Registering netdevice failed\n");
		FUNC12(ifp->ndev);
		goto fail;
	}

	return &ifp->vif->wdev;

fail:
	FUNC9(vif);
	return FUNC0(err);
}