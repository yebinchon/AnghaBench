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
struct net_device {int dummy; } ;
struct brcmf_if {TYPE_1__* drvr; } ;
struct brcmf_cfg80211_info {int /*<<< orphan*/  usr_sync; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_2__ {struct brcmf_cfg80211_info* config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct brcmf_if* FUNC3 (struct net_device*) ; 

s32 FUNC4(struct net_device *ndev)
{
	struct brcmf_if *ifp = FUNC3(ndev);
	struct brcmf_cfg80211_info *cfg = ifp->drvr->config;
	s32 err = 0;

	FUNC1(&cfg->usr_sync);
	err = FUNC0(ifp);
	FUNC2(&cfg->usr_sync);

	return err;
}