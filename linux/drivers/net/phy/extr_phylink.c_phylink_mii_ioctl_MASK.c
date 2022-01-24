#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phylink {TYPE_2__* phydev; } ;
struct mii_ioctl_data {int val_out; int /*<<< orphan*/  val_in; int /*<<< orphan*/  reg_num; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ mdio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int FUNC2 (TYPE_2__*,struct ifreq*,int) ; 
 int FUNC3 (struct phylink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phylink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phylink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct phylink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct phylink *pl, struct ifreq *ifr, int cmd)
{
	struct mii_ioctl_data *mii = FUNC1(ifr);
	int  ret;

	FUNC0();

	if (pl->phydev) {
		/* PHYs only exist for MLO_AN_PHY and SGMII */
		switch (cmd) {
		case SIOCGMIIPHY:
			mii->phy_id = pl->phydev->mdio.addr;
			/* fall through */

		case SIOCGMIIREG:
			ret = FUNC5(pl, mii->phy_id, mii->reg_num);
			if (ret >= 0) {
				mii->val_out = ret;
				ret = 0;
			}
			break;

		case SIOCSMIIREG:
			ret = FUNC6(pl, mii->phy_id, mii->reg_num,
						mii->val_in);
			break;

		default:
			ret = FUNC2(pl->phydev, ifr, cmd);
			break;
		}
	} else {
		switch (cmd) {
		case SIOCGMIIPHY:
			mii->phy_id = 0;
			/* fall through */

		case SIOCGMIIREG:
			ret = FUNC3(pl, mii->phy_id, mii->reg_num);
			if (ret >= 0) {
				mii->val_out = ret;
				ret = 0;
			}
			break;

		case SIOCSMIIREG:
			ret = FUNC4(pl, mii->phy_id, mii->reg_num,
						mii->val_in);
			break;

		default:
			ret = -EOPNOTSUPP;
			break;
		}
	}

	return ret;
}