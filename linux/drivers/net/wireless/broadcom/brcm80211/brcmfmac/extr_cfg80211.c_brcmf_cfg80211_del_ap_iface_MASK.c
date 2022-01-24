#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wireless_dev {struct net_device* netdev; } ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/ * vif; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_E_IF_DEL ; 
 int /*<<< orphan*/  BRCMF_VIF_EVENT_TIMEOUT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_cfg80211_info*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct brcmf_cfg80211_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct brcmf_if*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_if*,int) ; 
 struct brcmf_if* FUNC5 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC6 (struct wiphy*) ; 

__attribute__((used)) static int FUNC7(struct wiphy *wiphy,
				       struct wireless_dev *wdev)
{
	struct brcmf_cfg80211_info *cfg = FUNC6(wiphy);
	struct net_device *ndev = wdev->netdev;
	struct brcmf_if *ifp = FUNC5(ndev);
	struct brcmf_pub *drvr = cfg->pub;
	int ret;
	int err;

	FUNC1(cfg, ifp->vif);

	err = FUNC3(ifp, "interface_remove", NULL, 0);
	if (err) {
		FUNC0(drvr, "interface_remove failed %d\n", err);
		goto err_unarm;
	}

	/* wait for firmware event */
	ret = FUNC2(cfg, BRCMF_E_IF_DEL,
					    BRCMF_VIF_EVENT_TIMEOUT);
	if (!ret) {
		FUNC0(drvr, "timeout occurred\n");
		err = -EIO;
		goto err_unarm;
	}

	FUNC4(ifp, true);

err_unarm:
	FUNC1(cfg, NULL);
	return err;
}