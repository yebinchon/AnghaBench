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
typedef  int /*<<< orphan*/  u64 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_cfg80211_info {scalar_t__ int_escan_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_cfg80211_info*,struct brcmf_if*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*,int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC3 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC4 (struct wiphy*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy,
					  struct net_device *ndev, u64 reqid)
{
	struct brcmf_cfg80211_info *cfg = FUNC4(wiphy);
	struct brcmf_if *ifp = FUNC3(ndev);

	FUNC0(SCAN, "enter\n");
	FUNC2(ifp, reqid);
	if (cfg->int_escan_map)
		FUNC1(cfg, ifp, true, true);
	return 0;
}