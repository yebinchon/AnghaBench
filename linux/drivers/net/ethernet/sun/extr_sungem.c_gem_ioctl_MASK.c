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
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int dummy; } ;
struct gem {int mii_phy_addr; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (struct gem*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*,int,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 struct gem* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct gem *gp = FUNC3(dev);
	struct mii_ioctl_data *data = FUNC2(ifr);
	int rc = -EOPNOTSUPP;

	/* For SIOCGMIIREG and SIOCSMIIREG the core checks for us that
	 * netif_device_present() is true and holds rtnl_lock for us
	 * so we have nothing to worry about
	 */

	switch (cmd) {
	case SIOCGMIIPHY:		/* Get address of MII PHY in use. */
		data->phy_id = gp->mii_phy_addr;
		/* Fallthrough... */

	case SIOCGMIIREG:		/* Read MII PHY register. */
		data->val_out = FUNC0(gp, data->phy_id & 0x1f,
					   data->reg_num & 0x1f);
		rc = 0;
		break;

	case SIOCSMIIREG:		/* Write MII PHY register. */
		FUNC1(gp, data->phy_id & 0x1f, data->reg_num & 0x1f,
			    data->val_in);
		rc = 0;
		break;
	}
	return rc;
}