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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  features; } ;
struct brcmf_pub {struct brcmf_bus* bus_if; } ;
struct brcmf_if {int /*<<< orphan*/  pend_8021x_cnt; int /*<<< orphan*/  bsscfgidx; struct brcmf_pub* drvr; } ;
struct brcmf_bus {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ BRCMF_BUS_UP ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  NETIF_F_IP_CSUM ; 
 int TOE_TX_CSUM_OL ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct brcmf_if*,char*,int*) ; 
 struct brcmf_if* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct brcmf_if *ifp = FUNC5(ndev);
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_bus *bus_if = drvr->bus_if;
	u32 toe_ol;

	FUNC3(TRACE, "Enter, bsscfgidx=%d\n", ifp->bsscfgidx);

	/* If bus is not ready, can't continue */
	if (bus_if->state != BRCMF_BUS_UP) {
		FUNC1(drvr, "failed bus is not ready\n");
		return -EAGAIN;
	}

	FUNC0(&ifp->pend_8021x_cnt, 0);

	/* Get current TOE mode from dongle */
	if (FUNC4(ifp, "toe_ol", &toe_ol) >= 0
	    && (toe_ol & TOE_TX_CSUM_OL) != 0)
		ndev->features |= NETIF_F_IP_CSUM;
	else
		ndev->features &= ~NETIF_F_IP_CSUM;

	if (FUNC2(ndev)) {
		FUNC1(drvr, "failed to bring up cfg80211\n");
		return -EIO;
	}

	/* Clear, carrier, set when connected or AP mode. */
	FUNC6(ndev);
	return 0;
}