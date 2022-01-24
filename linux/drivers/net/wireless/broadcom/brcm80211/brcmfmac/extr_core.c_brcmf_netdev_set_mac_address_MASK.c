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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  mac_addr; TYPE_1__* ndev; int /*<<< orphan*/  bsscfgidx; struct brcmf_pub* drvr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct brcmf_if*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct brcmf_if* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, void *addr)
{
	struct brcmf_if *ifp = FUNC4(ndev);
	struct sockaddr *sa = (struct sockaddr *)addr;
	struct brcmf_pub *drvr = ifp->drvr;
	int err;

	FUNC1(TRACE, "Enter, bsscfgidx=%d\n", ifp->bsscfgidx);

	err = FUNC2(ifp, "cur_etheraddr", sa->sa_data,
				       ETH_ALEN);
	if (err < 0) {
		FUNC0(drvr, "Setting cur_etheraddr failed, %d\n", err);
	} else {
		FUNC1(TRACE, "updated to %pM\n", sa->sa_data);
		FUNC3(ifp->mac_addr, sa->sa_data, ETH_ALEN);
		FUNC3(ifp->ndev->dev_addr, ifp->mac_addr, ETH_ALEN);
	}
	return err;
}