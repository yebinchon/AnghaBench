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
struct korina_private {int rx_irq; TYPE_1__* eth_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  miimwtd; int /*<<< orphan*/  miimcmd; int /*<<< orphan*/  miimaddr; int /*<<< orphan*/  miimcfg; } ;

/* Variables and functions */
 int ETH_MII_CMD_SCN ; 
 struct korina_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, int mii_id, int reg, int val)
{
	struct korina_private *lp = FUNC0(dev);

	mii_id = ((lp->rx_irq == 0x2c ? 1 : 0) << 8);

	FUNC1(0, &lp->eth_regs->miimcfg);
	FUNC1(1, &lp->eth_regs->miimcmd);
	FUNC1(mii_id | reg, &lp->eth_regs->miimaddr);
	FUNC1(ETH_MII_CMD_SCN, &lp->eth_regs->miimcmd);
	FUNC1(val, &lp->eth_regs->miimwtd);
}