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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_power_cfg {int is_power_auto; int is_power_fixed; int power_level; } ;
struct mwifiex_adapter {int dummy; } ;
typedef  enum nl80211_tx_power_setting { ____Placeholder_nl80211_tx_power_setting } nl80211_tx_power_setting ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
#define  NL80211_TX_POWER_AUTOMATIC 130 
#define  NL80211_TX_POWER_FIXED 129 
#define  NL80211_TX_POWER_LIMITED 128 
 struct mwifiex_adapter* FUNC1 (struct wiphy*) ; 
 struct mwifiex_private* FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mwifiex_private*,struct mwifiex_power_cfg*) ; 

__attribute__((used)) static int
FUNC4(struct wiphy *wiphy,
			      struct wireless_dev *wdev,
			      enum nl80211_tx_power_setting type,
			      int mbm)
{
	struct mwifiex_adapter *adapter = FUNC1(wiphy);
	struct mwifiex_private *priv;
	struct mwifiex_power_cfg power_cfg;
	int dbm = FUNC0(mbm);

	switch (type) {
	case NL80211_TX_POWER_FIXED:
		power_cfg.is_power_auto = 0;
		power_cfg.is_power_fixed = 1;
		power_cfg.power_level = dbm;
		break;
	case NL80211_TX_POWER_LIMITED:
		power_cfg.is_power_auto = 0;
		power_cfg.is_power_fixed = 0;
		power_cfg.power_level = dbm;
		break;
	case NL80211_TX_POWER_AUTOMATIC:
		power_cfg.is_power_auto = 1;
		break;
	}

	priv = FUNC2(adapter, MWIFIEX_BSS_ROLE_ANY);

	return FUNC3(priv, &power_cfg);
}