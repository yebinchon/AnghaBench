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
typedef  int u32 ;
struct wiphy {scalar_t__ rts_threshold; scalar_t__ frag_threshold; scalar_t__ retry_long; scalar_t__ retry_short; } ;
struct net_device {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  vif; } ;
struct brcmf_cfg80211_info {TYPE_1__* conf; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ rts_threshold; scalar_t__ frag_threshold; scalar_t__ retry_long; scalar_t__ retry_short; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int /*<<< orphan*/  TRACE ; 
 int WIPHY_PARAM_FRAG_THRESHOLD ; 
 int WIPHY_PARAM_RETRY_LONG ; 
 int WIPHY_PARAM_RETRY_SHORT ; 
 int WIPHY_PARAM_RTS_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct net_device*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct net_device*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (struct net_device*,scalar_t__) ; 
 struct net_device* FUNC4 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC6 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC7 (struct wiphy*) ; 

__attribute__((used)) static s32 FUNC8(struct wiphy *wiphy, u32 changed)
{
	struct brcmf_cfg80211_info *cfg = FUNC7(wiphy);
	struct net_device *ndev = FUNC4(cfg);
	struct brcmf_if *ifp = FUNC6(ndev);
	s32 err = 0;

	FUNC0(TRACE, "Enter\n");
	if (!FUNC5(ifp->vif))
		return -EIO;

	if (changed & WIPHY_PARAM_RTS_THRESHOLD &&
	    (cfg->conf->rts_threshold != wiphy->rts_threshold)) {
		cfg->conf->rts_threshold = wiphy->rts_threshold;
		err = FUNC3(ndev, cfg->conf->rts_threshold);
		if (!err)
			goto done;
	}
	if (changed & WIPHY_PARAM_FRAG_THRESHOLD &&
	    (cfg->conf->frag_threshold != wiphy->frag_threshold)) {
		cfg->conf->frag_threshold = wiphy->frag_threshold;
		err = FUNC1(ndev, cfg->conf->frag_threshold);
		if (!err)
			goto done;
	}
	if (changed & WIPHY_PARAM_RETRY_LONG
	    && (cfg->conf->retry_long != wiphy->retry_long)) {
		cfg->conf->retry_long = wiphy->retry_long;
		err = FUNC2(ndev, cfg->conf->retry_long, true);
		if (!err)
			goto done;
	}
	if (changed & WIPHY_PARAM_RETRY_SHORT
	    && (cfg->conf->retry_short != wiphy->retry_short)) {
		cfg->conf->retry_short = wiphy->retry_short;
		err = FUNC2(ndev, cfg->conf->retry_short, false);
		if (!err)
			goto done;
	}

done:
	FUNC0(TRACE, "Exit\n");
	return err;
}