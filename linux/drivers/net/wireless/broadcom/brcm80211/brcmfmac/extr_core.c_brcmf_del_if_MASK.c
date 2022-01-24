#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct brcmf_pub {size_t* if2bss; struct brcmf_if** iflist; } ;
struct brcmf_if {int ifidx; TYPE_1__* ndev; int /*<<< orphan*/  ndoffload_work; int /*<<< orphan*/  multicast_work; } ;
typedef  size_t s32 ;
struct TYPE_4__ {int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 size_t BRCMF_BSSIDX_INVALID ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  brcmf_netdev_ops_pri ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_if*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct brcmf_pub *drvr, s32 bsscfgidx,
			 bool rtnl_locked)
{
	struct brcmf_if *ifp;
	int ifidx;

	ifp = drvr->iflist[bsscfgidx];
	if (!ifp) {
		FUNC0(drvr, "Null interface, bsscfgidx=%d\n", bsscfgidx);
		return;
	}
	FUNC1(TRACE, "Enter, bsscfgidx=%d, ifidx=%d\n", bsscfgidx,
		  ifp->ifidx);
	ifidx = ifp->ifidx;

	if (ifp->ndev) {
		if (bsscfgidx == 0) {
			if (ifp->ndev->netdev_ops == &brcmf_netdev_ops_pri) {
				FUNC8();
				FUNC3(ifp->ndev);
				FUNC9();
			}
		} else {
			FUNC7(ifp->ndev);
		}

		if (ifp->ndev->netdev_ops == &brcmf_netdev_ops_pri) {
			FUNC5(&ifp->multicast_work);
			FUNC5(&ifp->ndoffload_work);
		}
		FUNC2(ifp->ndev, rtnl_locked);
	} else {
		/* Only p2p device interfaces which get dynamically created
		 * end up here. In this case the p2p module should be informed
		 * about the removal of the interface within the firmware. If
		 * not then p2p commands towards the firmware will cause some
		 * serious troublesome side effects. The p2p module will clean
		 * up the ifp if needed.
		 */
		FUNC4(ifp, rtnl_locked);
		FUNC6(ifp);
	}

	drvr->iflist[bsscfgidx] = NULL;
	if (drvr->if2bss[ifidx] == bsscfgidx)
		drvr->if2bss[ifidx] = BRCMF_BSSIDX_INVALID;
}