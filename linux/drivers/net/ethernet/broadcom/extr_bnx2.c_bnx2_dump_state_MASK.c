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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct bnx2 {int flags; int /*<<< orphan*/  pdev; scalar_t__ pm_cap; int /*<<< orphan*/  intr_sem; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_EMAC_RX_STATUS ; 
 int /*<<< orphan*/  BNX2_EMAC_TX_STATUS ; 
 int BNX2_FLAG_USING_MSIX ; 
 int /*<<< orphan*/  BNX2_HC_STATS_INTERRUPT_STATUS ; 
 scalar_t__ BNX2_PCICFG_MISC_CONFIG ; 
 int /*<<< orphan*/  BNX2_PCI_GRC_WINDOW3_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNX2_RPM_MGMT_PKT_CTRL ; 
 scalar_t__ PCI_COMMAND ; 
 scalar_t__ PCI_PM_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bnx2 *bp)
{
	struct net_device *dev = bp->dev;
	u32 val1, val2;

	FUNC3(bp->pdev, PCI_COMMAND, &val1);
	FUNC2(dev, "DEBUG: intr_sem[%x] PCI_CMD[%08x]\n",
		   FUNC1(&bp->intr_sem), val1);
	FUNC3(bp->pdev, bp->pm_cap + PCI_PM_CTRL, &val1);
	FUNC3(bp->pdev, BNX2_PCICFG_MISC_CONFIG, &val2);
	FUNC2(dev, "DEBUG: PCI_PM[%08x] PCI_MISC_CFG[%08x]\n", val1, val2);
	FUNC2(dev, "DEBUG: EMAC_TX_STATUS[%08x] EMAC_RX_STATUS[%08x]\n",
		   FUNC0(bp, BNX2_EMAC_TX_STATUS),
		   FUNC0(bp, BNX2_EMAC_RX_STATUS));
	FUNC2(dev, "DEBUG: RPM_MGMT_PKT_CTRL[%08x]\n",
		   FUNC0(bp, BNX2_RPM_MGMT_PKT_CTRL));
	FUNC2(dev, "DEBUG: HC_STATS_INTERRUPT_STATUS[%08x]\n",
		   FUNC0(bp, BNX2_HC_STATS_INTERRUPT_STATUS));
	if (bp->flags & BNX2_FLAG_USING_MSIX)
		FUNC2(dev, "DEBUG: PBA[%08x]\n",
			   FUNC0(bp, BNX2_PCI_GRC_WINDOW3_BASE));
}