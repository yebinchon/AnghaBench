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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {TYPE_2__* vif; } ;
struct brcmf_cfg80211_info {int pwr_save; struct brcmf_pub* pub; } ;
typedef  int s32 ;
struct TYPE_3__ {scalar_t__ iftype; } ;
struct TYPE_4__ {TYPE_1__ wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_PM ; 
 int ENODEV ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 int PM_FAST ; 
 int PM_OFF ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct brcmf_if*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct brcmf_if* FUNC4 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC5 (struct wiphy*) ; 

__attribute__((used)) static s32
FUNC6(struct wiphy *wiphy, struct net_device *ndev,
			   bool enabled, s32 timeout)
{
	s32 pm;
	s32 err = 0;
	struct brcmf_cfg80211_info *cfg = FUNC5(wiphy);
	struct brcmf_if *ifp = FUNC4(ndev);
	struct brcmf_pub *drvr = cfg->pub;

	FUNC1(TRACE, "Enter\n");

	/*
	 * Powersave enable/disable request is coming from the
	 * cfg80211 even before the interface is up. In that
	 * scenario, driver will be storing the power save
	 * preference in cfg struct to apply this to
	 * FW later while initializing the dongle
	 */
	cfg->pwr_save = enabled;
	if (!FUNC3(ifp->vif)) {

		FUNC1(INFO, "Device is not ready, storing the value in cfg_info struct\n");
		goto done;
	}

	pm = enabled ? PM_FAST : PM_OFF;
	/* Do not enable the power save after assoc if it is a p2p interface */
	if (ifp->vif->wdev.iftype == NL80211_IFTYPE_P2P_CLIENT) {
		FUNC1(INFO, "Do not enable power save for P2P clients\n");
		pm = PM_OFF;
	}
	FUNC1(INFO, "power save %s\n", (pm ? "enabled" : "disabled"));

	err = FUNC2(ifp, BRCMF_C_SET_PM, pm);
	if (err) {
		if (err == -ENODEV)
			FUNC0(drvr, "net_device is not ready yet\n");
		else
			FUNC0(drvr, "error (%d)\n", err);
	}
done:
	FUNC1(TRACE, "Exit\n");
	return err;
}