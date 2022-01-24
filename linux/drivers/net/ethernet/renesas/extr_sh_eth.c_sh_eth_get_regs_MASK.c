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
struct sh_eth_private {TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int /*<<< orphan*/  version; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SH_ETH_REG_DUMP_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,void*) ; 
 struct sh_eth_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev, struct ethtool_regs *regs,
			    void *buf)
{
	struct sh_eth_private *mdp = FUNC1(ndev);

	regs->version = SH_ETH_REG_DUMP_VERSION;

	FUNC2(&mdp->pdev->dev);
	FUNC0(ndev, buf);
	FUNC3(&mdp->pdev->dev);
}