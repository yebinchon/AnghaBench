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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct station_info {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mac; scalar_t__ count; } ;
struct brcmf_cfg80211_info {TYPE_1__ assoclist; struct brcmf_pub* pub; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_GET_ASSOCLIST ; 
 int /*<<< orphan*/  BRCMF_MAX_ASSOCLIST ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,scalar_t__) ; 
 int FUNC1 (struct wiphy*,struct net_device*,int /*<<< orphan*/ *,struct station_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (struct brcmf_if*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC7 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static int
FUNC9(struct wiphy *wiphy, struct net_device *ndev,
			    int idx, u8 *mac, struct station_info *sinfo)
{
	struct brcmf_cfg80211_info *cfg = FUNC8(wiphy);
	struct brcmf_if *ifp = FUNC7(ndev);
	struct brcmf_pub *drvr = cfg->pub;
	s32 err;

	FUNC2(TRACE, "Enter, idx %d\n", idx);

	if (idx == 0) {
		cfg->assoclist.count = FUNC4(BRCMF_MAX_ASSOCLIST);
		err = FUNC3(ifp, BRCMF_C_GET_ASSOCLIST,
					     &cfg->assoclist,
					     sizeof(cfg->assoclist));
		if (err) {
			FUNC0(drvr, "BRCMF_C_GET_ASSOCLIST unsupported, err=%d\n",
				 err);
			cfg->assoclist.count = 0;
			return -EOPNOTSUPP;
		}
	}
	if (idx < FUNC5(cfg->assoclist.count)) {
		FUNC6(mac, cfg->assoclist.mac[idx], ETH_ALEN);
		return FUNC1(wiphy, ndev, mac, sinfo);
	}
	return -ENOENT;
}