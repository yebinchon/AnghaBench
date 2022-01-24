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
struct netdev_private {int* phys; int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 struct mii_ioctl_data* FUNC0 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int,int /*<<< orphan*/ ) ; 
 struct netdev_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct mii_ioctl_data *data = FUNC0(rq);
	struct netdev_private *np = FUNC3(dev);

	switch(cmd) {
	case SIOCGMIIPHY:		/* Get address of MII PHY in use. */
		data->phy_id = ((struct netdev_private *)FUNC3(dev))->phys[0] & 0x1f;
		/* Fall Through */

	case SIOCGMIIREG:		/* Read MII PHY register. */
		FUNC4(&np->lock);
		data->val_out = FUNC1(dev, data->phy_id & 0x1f, data->reg_num & 0x1f);
		FUNC5(&np->lock);
		return 0;

	case SIOCSMIIREG:		/* Write MII PHY register. */
		FUNC4(&np->lock);
		FUNC2(dev, data->phy_id & 0x1f, data->reg_num & 0x1f, data->val_in);
		FUNC5(&np->lock);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
}