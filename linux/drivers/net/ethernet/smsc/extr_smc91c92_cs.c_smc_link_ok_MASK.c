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
struct smc_private {int cfg; int /*<<< orphan*/  mii_if; } ;
struct net_device {unsigned int base_addr; } ;

/* Variables and functions */
 int CFG_MII_SELECT ; 
 scalar_t__ EPH ; 
 int EPH_LINK_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct smc_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    struct smc_private *smc = FUNC3(dev);

    if (smc->cfg & CFG_MII_SELECT) {
	return FUNC2(&smc->mii_if);
    } else {
        FUNC0(0);
	return FUNC1(ioaddr + EPH) & EPH_LINK_OK;
    }
}