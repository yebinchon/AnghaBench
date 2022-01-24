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
struct brcmf_if {struct net_device* ndev; int /*<<< orphan*/  bsscfgidx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_NETIF_STOP_REASON_DISCONNECTED ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

void FUNC5(struct brcmf_if *ifp, bool on)
{
	struct net_device *ndev;

	FUNC0(TRACE, "Enter, bsscfgidx=%d carrier=%d\n", ifp->bsscfgidx,
		  on);

	ndev = ifp->ndev;
	FUNC1(ifp, BRCMF_NETIF_STOP_REASON_DISCONNECTED, !on);
	if (on) {
		if (!FUNC3(ndev))
			FUNC4(ndev);

	} else {
		if (FUNC3(ndev))
			FUNC2(ndev);
	}
}