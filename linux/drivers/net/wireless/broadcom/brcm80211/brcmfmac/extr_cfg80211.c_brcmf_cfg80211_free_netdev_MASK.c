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
struct net_device {int dummy; } ;
struct brcmf_if {struct brcmf_cfg80211_vif* vif; } ;
struct brcmf_cfg80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_cfg80211_vif*) ; 
 struct brcmf_if* FUNC1 (struct net_device*) ; 

void FUNC2(struct net_device *ndev)
{
	struct brcmf_cfg80211_vif *vif;
	struct brcmf_if *ifp;

	ifp = FUNC1(ndev);
	vif = ifp->vif;

	if (vif)
		FUNC0(vif);
}