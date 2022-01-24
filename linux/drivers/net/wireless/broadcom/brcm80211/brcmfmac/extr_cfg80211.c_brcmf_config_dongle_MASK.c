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
struct wireless_dev {int /*<<< orphan*/  iftype; int /*<<< orphan*/  wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_cfg80211_info {int dongle_up; scalar_t__ pwr_save; struct brcmf_pub* pub; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_FAKEFRAG ; 
 int /*<<< orphan*/  BRCMF_C_SET_PM ; 
 int /*<<< orphan*/  BRCMF_C_UP ; 
 int /*<<< orphan*/  INFO ; 
 int PM_FAST ; 
 int PM_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_if*) ; 
 int FUNC6 (struct brcmf_if*,int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC7 (struct brcmf_cfg80211_info*) ; 
 struct brcmf_if* FUNC8 (struct net_device*) ; 

__attribute__((used)) static s32 FUNC9(struct brcmf_cfg80211_info *cfg)
{
	struct brcmf_pub *drvr = cfg->pub;
	struct net_device *ndev;
	struct wireless_dev *wdev;
	struct brcmf_if *ifp;
	s32 power_mode;
	s32 err = 0;

	if (cfg->dongle_up)
		return err;

	ndev = FUNC7(cfg);
	wdev = ndev->ieee80211_ptr;
	ifp = FUNC8(ndev);

	/* make sure RF is ready for work */
	FUNC6(ifp, BRCMF_C_UP, 0);

	FUNC5(ifp);

	power_mode = cfg->pwr_save ? PM_FAST : PM_OFF;
	err = FUNC6(ifp, BRCMF_C_SET_PM, power_mode);
	if (err)
		goto default_conf_out;
	FUNC3(INFO, "power save set to %s\n",
		  (power_mode ? "enabled" : "disabled"));

	err = FUNC4(ifp);
	if (err)
		goto default_conf_out;
	err = FUNC1(wdev->wiphy, ndev, wdev->iftype,
					  NULL);
	if (err)
		goto default_conf_out;

	FUNC2(ifp, true);

	err = FUNC6(ifp, BRCMF_C_SET_FAKEFRAG, 1);
	if (err) {
		FUNC0(drvr, "failed to set frameburst mode\n");
		goto default_conf_out;
	}

	cfg->dongle_up = true;
default_conf_out:

	return err;

}