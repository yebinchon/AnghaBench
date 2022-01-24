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
typedef  int u32 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  vif; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
typedef  int s32 ;
typedef  enum nl80211_tx_power_setting { ____Placeholder_nl80211_tx_power_setting } nl80211_tx_power_setting ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_RADIO ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (int) ; 
#define  NL80211_TX_POWER_AUTOMATIC 130 
#define  NL80211_TX_POWER_FIXED 129 
#define  NL80211_TX_POWER_LIMITED 128 
 int /*<<< orphan*/  TRACE ; 
 int WL_RADIO_SW_DISABLE ; 
 int WL_TXPWR_OVERRIDE ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (struct brcmf_if*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct brcmf_if*,char*,int) ; 
 struct net_device* FUNC5 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC7 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static s32
FUNC9(struct wiphy *wiphy, struct wireless_dev *wdev,
			    enum nl80211_tx_power_setting type, s32 mbm)
{
	struct brcmf_cfg80211_info *cfg = FUNC8(wiphy);
	struct net_device *ndev = FUNC5(cfg);
	struct brcmf_if *ifp = FUNC7(ndev);
	struct brcmf_pub *drvr = cfg->pub;
	s32 err;
	s32 disable;
	u32 qdbm = 127;

	FUNC2(TRACE, "Enter %d %d\n", type, mbm);
	if (!FUNC6(ifp->vif))
		return -EIO;

	switch (type) {
	case NL80211_TX_POWER_AUTOMATIC:
		break;
	case NL80211_TX_POWER_LIMITED:
	case NL80211_TX_POWER_FIXED:
		if (mbm < 0) {
			FUNC1(drvr, "TX_POWER_FIXED - dbm is negative\n");
			err = -EINVAL;
			goto done;
		}
		qdbm =  FUNC0(4 * mbm);
		if (qdbm > 127)
			qdbm = 127;
		qdbm |= WL_TXPWR_OVERRIDE;
		break;
	default:
		FUNC1(drvr, "Unsupported type %d\n", type);
		err = -EINVAL;
		goto done;
	}
	/* Make sure radio is off or on as far as software is concerned */
	disable = WL_RADIO_SW_DISABLE << 16;
	err = FUNC3(ifp, BRCMF_C_SET_RADIO, disable);
	if (err)
		FUNC1(drvr, "WLC_SET_RADIO error (%d)\n", err);

	err = FUNC4(ifp, "qtxpower", qdbm);
	if (err)
		FUNC1(drvr, "qtxpower error (%d)\n", err);

done:
	FUNC2(TRACE, "Exit %d (qdbm)\n", qdbm & ~WL_TXPWR_OVERRIDE);
	return err;
}