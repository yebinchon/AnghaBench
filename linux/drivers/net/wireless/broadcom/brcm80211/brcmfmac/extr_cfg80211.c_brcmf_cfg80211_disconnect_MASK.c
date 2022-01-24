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
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_scb_val_le {int /*<<< orphan*/  val; int /*<<< orphan*/  ea; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_1__* vif; } ;
struct brcmf_cfg80211_profile {int /*<<< orphan*/  bssid; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
typedef  int /*<<< orphan*/  scbval ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {int /*<<< orphan*/  sme_state; struct brcmf_cfg80211_profile profile; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_DISASSOC ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTED ; 
 int /*<<< orphan*/  BRCMF_VIF_STATUS_CONNECTING ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct brcmf_if*,int /*<<< orphan*/ ,struct brcmf_scb_val_le*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC8 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC9 (struct wiphy*) ; 

__attribute__((used)) static s32
FUNC10(struct wiphy *wiphy, struct net_device *ndev,
		       u16 reason_code)
{
	struct brcmf_cfg80211_info *cfg = FUNC9(wiphy);
	struct brcmf_if *ifp = FUNC8(ndev);
	struct brcmf_cfg80211_profile *profile = &ifp->vif->profile;
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_scb_val_le scbval;
	s32 err = 0;

	FUNC1(TRACE, "Enter. Reason code = %d\n", reason_code);
	if (!FUNC4(ifp->vif))
		return -EIO;

	FUNC5(BRCMF_VIF_STATUS_CONNECTED, &ifp->vif->sme_state);
	FUNC5(BRCMF_VIF_STATUS_CONNECTING, &ifp->vif->sme_state);
	FUNC3(ndev, reason_code, NULL, 0, true, GFP_KERNEL);

	FUNC7(&scbval.ea, &profile->bssid, ETH_ALEN);
	scbval.val = FUNC6(reason_code);
	err = FUNC2(ifp, BRCMF_C_DISASSOC,
				     &scbval, sizeof(scbval));
	if (err)
		FUNC0(drvr, "error (%d)\n", err);

	FUNC1(TRACE, "Exit\n");
	return err;
}