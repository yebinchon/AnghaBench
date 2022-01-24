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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;
struct station_parameters {int /*<<< orphan*/  aid; int /*<<< orphan*/  sta_flags_set; int /*<<< orphan*/  sta_flags_mask; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  WIL_MAX_DMG_AID ; 
 int /*<<< orphan*/  disable_ap_sme ; 
 struct wil6210_vif* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*) ; 
 struct wil6210_priv* FUNC3 (struct wiphy*) ; 
 int FUNC4 (struct wil6210_vif*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy,
				    struct net_device *dev,
				    const u8 *mac,
				    struct station_parameters *params)
{
	struct wil6210_vif *vif = FUNC0(dev);
	struct wil6210_priv *wil = FUNC3(wiphy);

	FUNC1(wil, "add station %pM aid %d mid %d mask 0x%x set 0x%x\n",
		     mac, params->aid, vif->mid,
		     params->sta_flags_mask, params->sta_flags_set);

	if (!disable_ap_sme) {
		FUNC2(wil, "not supported with AP SME enabled\n");
		return -EOPNOTSUPP;
	}

	if (params->aid > WIL_MAX_DMG_AID) {
		FUNC2(wil, "invalid aid\n");
		return -EINVAL;
	}

	return FUNC4(vif, mac, params->aid);
}