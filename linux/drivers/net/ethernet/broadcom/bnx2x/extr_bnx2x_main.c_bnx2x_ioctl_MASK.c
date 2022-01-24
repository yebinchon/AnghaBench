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
struct net_device {int dummy; } ;
struct mii_ioctl_data {int /*<<< orphan*/  val_in; int /*<<< orphan*/  reg_num; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
#define  SIOCSHWTSTAMP 128 
 int FUNC1 (struct bnx2x*,struct ifreq*) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int) ; 
 struct bnx2x* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct bnx2x *bp = FUNC4(dev);
	struct mii_ioctl_data *mdio = FUNC2(ifr);

	if (!FUNC5(dev))
		return -EAGAIN;

	switch (cmd) {
	case SIOCSHWTSTAMP:
		return FUNC1(bp, ifr);
	default:
		FUNC0(NETIF_MSG_LINK, "ioctl: phy id 0x%x, reg 0x%x, val_in 0x%x\n",
		   mdio->phy_id, mdio->reg_num, mdio->val_in);
		return FUNC3(&bp->mdio, mdio, cmd);
	}
}