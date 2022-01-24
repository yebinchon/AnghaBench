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
typedef  int /*<<< orphan*/  u32 ;
struct smsc911x_data {int /*<<< orphan*/  mac_lock; int /*<<< orphan*/  idrev; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  bus; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct net_device {struct phy_device* phydev; } ;
struct ethtool_regs {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 unsigned int E2P_DATA ; 
 unsigned int ID_REV ; 
 unsigned int MAC_CR ; 
 unsigned int WUCSR ; 
 struct smsc911x_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc911x_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct net_device *dev, struct ethtool_regs *regs,
			 void *buf)
{
	struct smsc911x_data *pdata = FUNC0(dev);
	struct phy_device *phy_dev = dev->phydev;
	unsigned long flags;
	unsigned int i;
	unsigned int j = 0;
	u32 *data = buf;

	regs->version = pdata->idrev;
	for (i = ID_REV; i <= E2P_DATA; i += (sizeof(u32)))
		data[j++] = FUNC3(pdata, i);

	for (i = MAC_CR; i <= WUCSR; i++) {
		FUNC4(&pdata->mac_lock, flags);
		data[j++] = FUNC1(pdata, i);
		FUNC5(&pdata->mac_lock, flags);
	}

	for (i = 0; i <= 31; i++)
		data[j++] = FUNC2(phy_dev->mdio.bus,
					      phy_dev->mdio.addr, i);
}