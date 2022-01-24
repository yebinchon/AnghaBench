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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct TYPE_4__ {TYPE_1__* netdev; } ;
struct brcmf_cfg80211_vif {TYPE_2__ wdev; } ;
struct brcmf_cfg80211_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (struct brcmf_if*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct brcmf_cfg80211_info*) ; 
 struct brcmf_if* FUNC2 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct brcmf_cfg80211_vif *vif)
{
	struct brcmf_cfg80211_info *cfg = FUNC3(&vif->wdev);
	struct net_device *pri_ndev = FUNC1(cfg);
	struct brcmf_if *ifp = FUNC2(pri_ndev);
	u8 *addr = vif->wdev.netdev->dev_addr;

	return FUNC0(ifp, "p2p_ifdis", addr, ETH_ALEN);
}