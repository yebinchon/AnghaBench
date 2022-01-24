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
typedef  int u16 ;
struct mii_bus {struct davinci_mdio_data* priv; } ;
struct davinci_mdio_data {int /*<<< orphan*/  dev; TYPE_2__* regs; } ;
struct TYPE_4__ {TYPE_1__* user; } ;
struct TYPE_3__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int PHY_ID_MASK ; 
 int PHY_REG_MASK ; 
 int USERACCESS_DATA ; 
 int USERACCESS_GO ; 
 int USERACCESS_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct davinci_mdio_data*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mii_bus *bus, int phy_id,
			      int phy_reg, u16 phy_data)
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

	reg = (USERACCESS_GO | USERACCESS_WRITE | (phy_reg << 21) |
		   (phy_id << 16) | (phy_data & USERACCESS_DATA));

	while (1) {
		ret = FUNC4(data);
		if (ret == -EAGAIN)
			continue;
		if (ret < 0)
			break;

		FUNC5(reg, &data->regs->user[0].access);

		ret = FUNC4(data);
		if (ret == -EAGAIN)
			continue;
		break;
	}

	FUNC1(data->dev);
	FUNC2(data->dev);

	return ret;
}