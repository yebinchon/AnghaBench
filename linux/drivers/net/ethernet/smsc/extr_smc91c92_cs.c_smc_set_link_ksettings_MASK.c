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
typedef  int u16 ;
struct smc_private {int cfg; int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; } ;
struct net_device {unsigned int base_addr; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 scalar_t__ BANK_SELECT ; 
 int CFG_MII_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct ethtool_link_ksettings const*) ; 
 struct smc_private* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,struct ethtool_link_ksettings const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
				  const struct ethtool_link_ksettings *ecmd)
{
	struct smc_private *smc = FUNC3(dev);
	unsigned int ioaddr = dev->base_addr;
	u16 saved_bank = FUNC1(ioaddr + BANK_SELECT);
	int ret;
	unsigned long flags;

	FUNC5(&smc->lock, flags);
	FUNC0(3);
	if (smc->cfg & CFG_MII_SELECT)
		ret = FUNC2(&smc->mii_if, ecmd);
	else
		ret = FUNC4(dev, ecmd);
	FUNC0(saved_bank);
	FUNC6(&smc->lock, flags);
	return ret;
}