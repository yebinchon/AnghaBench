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
struct mii_ioctl_data {int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;
struct cas {int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/  phy_addr; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (struct cas*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*,int) ; 
 int FUNC2 (struct cas*,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC3 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cas* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct cas *cp = FUNC6(dev);
	struct mii_ioctl_data *data = FUNC3(ifr);
	unsigned long flags;
	int rc = -EOPNOTSUPP;

	/* Hold the PM mutex while doing ioctl's or we may collide
	 * with open/close and power management and oops.
	 */
	FUNC4(&cp->pm_mutex);
	switch (cmd) {
	case SIOCGMIIPHY:		/* Get address of MII PHY in use. */
		data->phy_id = cp->phy_addr;
		/* Fallthrough... */

	case SIOCGMIIREG:		/* Read MII PHY register. */
		FUNC7(&cp->lock, flags);
		FUNC0(cp, 0);
		data->val_out = FUNC1(cp, data->reg_num & 0x1f);
		FUNC0(cp, 1);
		FUNC8(&cp->lock, flags);
		rc = 0;
		break;

	case SIOCSMIIREG:		/* Write MII PHY register. */
		FUNC7(&cp->lock, flags);
		FUNC0(cp, 0);
		rc = FUNC2(cp, data->reg_num & 0x1f, data->val_in);
		FUNC0(cp, 1);
		FUNC8(&cp->lock, flags);
		break;
	default:
		break;
	}

	FUNC5(&cp->pm_mutex);
	return rc;
}