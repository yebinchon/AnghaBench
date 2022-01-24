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
struct net_device {int dummy; } ;
struct gem {int mac_rx_cfg; scalar_t__ regs; int /*<<< orphan*/  cell_enabled; scalar_t__ reset_task_pending; } ;

/* Variables and functions */
 scalar_t__ MAC_RXCFG ; 
 int MAC_RXCFG_ENAB ; 
 int MAC_RXCFG_HFE ; 
 int MAC_RXCFG_PROM ; 
 int MAC_RXCFG_SFCS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct gem*) ; 
 struct gem* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct gem *gp = FUNC2(dev);
	u32 rxcfg, rxcfg_new;
	int limit = 10000;

	if (!FUNC4(dev) || !FUNC3(dev))
		return;

	/* Better safe than sorry... */
	if (gp->reset_task_pending || FUNC0(!gp->cell_enabled))
		return;

	rxcfg = FUNC5(gp->regs + MAC_RXCFG);
	rxcfg_new = FUNC1(gp);
#ifdef STRIP_FCS
	rxcfg_new |= MAC_RXCFG_SFCS;
#endif
	gp->mac_rx_cfg = rxcfg_new;

	FUNC7(rxcfg & ~MAC_RXCFG_ENAB, gp->regs + MAC_RXCFG);
	while (FUNC5(gp->regs + MAC_RXCFG) & MAC_RXCFG_ENAB) {
		if (!limit--)
			break;
		FUNC6(10);
	}

	rxcfg &= ~(MAC_RXCFG_PROM | MAC_RXCFG_HFE);
	rxcfg |= rxcfg_new;

	FUNC7(rxcfg, gp->regs + MAC_RXCFG);
}