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
typedef  int /*<<< orphan*/  u16 ;
struct sky2_port {int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  port; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  PHY_ADDR_MARV ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int FUNC0 (struct sky2_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sky2_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC2 (struct ifreq*) ; 
 struct sky2_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct mii_ioctl_data *data = FUNC2(ifr);
	struct sky2_port *sky2 = FUNC3(dev);
	struct sky2_hw *hw = sky2->hw;
	int err = -EOPNOTSUPP;

	if (!FUNC4(dev))
		return -ENODEV;	/* Phy still in reset */

	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = PHY_ADDR_MARV;

		/* fallthru */
	case SIOCGMIIREG: {
		u16 val = 0;

		FUNC5(&sky2->phy_lock);
		err = FUNC0(hw, sky2->port, data->reg_num & 0x1f, &val);
		FUNC6(&sky2->phy_lock);

		data->val_out = val;
		break;
	}

	case SIOCSMIIREG:
		FUNC5(&sky2->phy_lock);
		err = FUNC1(hw, sky2->port, data->reg_num & 0x1f,
				   data->val_in);
		FUNC6(&sky2->phy_lock);
		break;
	}
	return err;
}