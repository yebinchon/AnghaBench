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
struct tg3 {int phy_flags; int phy_addr; int /*<<< orphan*/  lock; int /*<<< orphan*/  mdio_bus; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
#define  SIOCGHWTSTAMP 132 
#define  SIOCGMIIPHY 131 
#define  SIOCGMIIREG 130 
#define  SIOCSHWTSTAMP 129 
#define  SIOCSMIIREG 128 
 int TG3_PHYFLG_IS_CONNECTED ; 
 int TG3_PHYFLG_PHY_SERDES ; 
 int /*<<< orphan*/  USE_PHYLIB ; 
 int FUNC0 (struct tg3*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct tg3*,int,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct tg3* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct phy_device*,struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct tg3*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct net_device*,struct ifreq*) ; 
 int FUNC11 (struct net_device*,struct ifreq*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct mii_ioctl_data *data = FUNC2(ifr);
	struct tg3 *tp = FUNC4(dev);
	int err;

	if (FUNC9(tp, USE_PHYLIB)) {
		struct phy_device *phydev;
		if (!(tp->phy_flags & TG3_PHYFLG_IS_CONNECTED))
			return -EAGAIN;
		phydev = FUNC3(tp->mdio_bus, tp->phy_addr);
		return FUNC6(phydev, ifr, cmd);
	}

	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = tp->phy_addr;

		/* fall through */
	case SIOCGMIIREG: {
		u32 mii_regval;

		if (tp->phy_flags & TG3_PHYFLG_PHY_SERDES)
			break;			/* We have no PHY */

		if (!FUNC5(dev))
			return -EAGAIN;

		FUNC7(&tp->lock);
		err = FUNC0(tp, data->phy_id & 0x1f,
				    data->reg_num & 0x1f, &mii_regval);
		FUNC8(&tp->lock);

		data->val_out = mii_regval;

		return err;
	}

	case SIOCSMIIREG:
		if (tp->phy_flags & TG3_PHYFLG_PHY_SERDES)
			break;			/* We have no PHY */

		if (!FUNC5(dev))
			return -EAGAIN;

		FUNC7(&tp->lock);
		err = FUNC1(tp, data->phy_id & 0x1f,
				     data->reg_num & 0x1f, data->val_in);
		FUNC8(&tp->lock);

		return err;

	case SIOCSHWTSTAMP:
		return FUNC11(dev, ifr);

	case SIOCGHWTSTAMP:
		return FUNC10(dev, ifr);

	default:
		/* do nothing */
		break;
	}
	return -EOPNOTSUPP;
}