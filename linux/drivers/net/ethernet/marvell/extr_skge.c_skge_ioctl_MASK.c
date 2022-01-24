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
struct skge_port {int /*<<< orphan*/  port; struct skge_hw* hw; } ;
struct skge_hw {int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  phy_addr; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int /*<<< orphan*/  val_in; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int FUNC0 (struct skge_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct skge_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct skge_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC3 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_hw*) ; 
 struct skge_port* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct skge_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct mii_ioctl_data *data = FUNC3(ifr);
	struct skge_port *skge = FUNC5(dev);
	struct skge_hw *hw = skge->hw;
	int err = -EOPNOTSUPP;

	if (!FUNC6(dev))
		return -ENODEV;	/* Phy still in reset */

	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = hw->phy_addr;

		/* fallthru */
	case SIOCGMIIREG: {
		u16 val = 0;
		FUNC7(&hw->phy_lock);

		if (FUNC4(hw))
			err = FUNC1(hw, skge->port, data->reg_num & 0x1f, &val);
		else
			err = FUNC0(hw, skge->port, data->reg_num & 0x1f, &val);
		FUNC8(&hw->phy_lock);
		data->val_out = val;
		break;
	}

	case SIOCSMIIREG:
		FUNC7(&hw->phy_lock);
		if (FUNC4(hw))
			err = FUNC9(hw, skge->port, data->reg_num & 0x1f,
				   data->val_in);
		else
			err = FUNC2(hw, skge->port, data->reg_num & 0x1f,
				   data->val_in);
		FUNC8(&hw->phy_lock);
		break;
	}
	return err;
}