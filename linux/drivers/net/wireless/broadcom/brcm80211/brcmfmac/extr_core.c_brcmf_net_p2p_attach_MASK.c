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
struct net_device {int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct brcmf_pub {int /*<<< orphan*/ ** iflist; } ;
struct brcmf_if {size_t bsscfgidx; struct brcmf_pub* drvr; int /*<<< orphan*/  mac_addr; struct net_device* ndev; } ;

/* Variables and functions */
 int EBADE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  brcmf_netdev_ops_p2p ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	struct net_device *ndev;

	FUNC1(TRACE, "Enter, bsscfgidx=%d mac=%pM\n", ifp->bsscfgidx,
		  ifp->mac_addr);
	ndev = ifp->ndev;

	ndev->netdev_ops = &brcmf_netdev_ops_p2p;

	/* set the mac address */
	FUNC2(ndev->dev_addr, ifp->mac_addr, ETH_ALEN);

	if (FUNC3(ndev) != 0) {
		FUNC0(drvr, "couldn't register the p2p net device\n");
		goto fail;
	}

	FUNC1(INFO, "%s: Broadcom Dongle Host Driver\n", ndev->name);

	return 0;

fail:
	ifp->drvr->iflist[ifp->bsscfgidx] = NULL;
	ndev->netdev_ops = NULL;
	return -EBADE;
}