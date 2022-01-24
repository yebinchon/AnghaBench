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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct lan78xx_net {int dummy; } ;
struct ethtool_regs {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lan78xx_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lan78xx_regs ; 
 struct lan78xx_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev, struct ethtool_regs *regs,
		 void *buf)
{
	u32 *data = buf;
	int i, j;
	struct lan78xx_net *dev = FUNC2(netdev);

	/* Read Device/MAC registers */
	for (i = 0; i < FUNC0(lan78xx_regs); i++)
		FUNC1(dev, lan78xx_regs[i], &data[i]);

	if (!netdev->phydev)
		return;

	/* Read PHY registers */
	for (j = 0; j < 32; i++, j++)
		data[i] = FUNC3(netdev->phydev, j);
}