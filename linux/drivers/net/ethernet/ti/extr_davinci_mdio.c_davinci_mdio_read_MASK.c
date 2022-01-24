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
typedef  int u32 ;
struct mii_bus {struct davinci_mdio_data* priv; } ;
struct davinci_mdio_data {int /*<<< orphan*/  dev; TYPE_2__* regs; } ;
struct TYPE_4__ {TYPE_1__* user; } ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int PHY_ID_MASK ; 
 int PHY_REG_MASK ; 
 int USERACCESS_ACK ; 
 int USERACCESS_DATA ; 
 int USERACCESS_GO ; 
 int USERACCESS_READ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct davinci_mdio_data*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mii_bus *bus, int phy_id, int phy_reg)
{
	struct davinci_mdio_data *data = bus->priv;
	u32 reg;
	int ret;

	if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
		return -EINVAL;

	ret = FUNC0(data->dev);
	if (ret < 0) {
		FUNC3(data->dev);
		return ret;
	}

	reg = (USERACCESS_GO | USERACCESS_READ | (phy_reg << 21) |
	       (phy_id << 16));

	while (1) {
		ret = FUNC5(data);
		if (ret == -EAGAIN)
			continue;
		if (ret < 0)
			break;

		FUNC6(reg, &data->regs->user[0].access);

		ret = FUNC5(data);
		if (ret == -EAGAIN)
			continue;
		if (ret < 0)
			break;

		reg = FUNC4(&data->regs->user[0].access);
		ret = (reg & USERACCESS_ACK) ? (reg & USERACCESS_DATA) : -EIO;
		break;
	}

	FUNC1(data->dev);
	FUNC2(data->dev);
	return ret;
}