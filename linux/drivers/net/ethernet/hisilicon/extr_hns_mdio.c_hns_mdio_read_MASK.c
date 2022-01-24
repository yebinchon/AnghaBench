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
typedef  int u8 ;
typedef  int u16 ;
struct mii_bus {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; scalar_t__ priv; } ;
struct hns_mdio_device {int /*<<< orphan*/  vbase; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MDIO_ADDR_DATA_M ; 
 int /*<<< orphan*/  MDIO_ADDR_DATA_S ; 
 int /*<<< orphan*/  MDIO_ADDR_REG ; 
 int /*<<< orphan*/  MDIO_C22_READ ; 
 int /*<<< orphan*/  MDIO_C45_READ ; 
 int /*<<< orphan*/  MDIO_C45_WRITE_ADDR ; 
 int FUNC0 (struct hns_mdio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hns_mdio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDIO_RDATA_DATA_M ; 
 int /*<<< orphan*/  MDIO_RDATA_DATA_S ; 
 int /*<<< orphan*/  MDIO_RDATA_REG ; 
 int /*<<< orphan*/  FUNC2 (struct hns_mdio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MDIO_STATE_STA_B ; 
 int /*<<< orphan*/  MDIO_STA_REG ; 
 int MII_ADDR_C45 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_mdio_device*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct mii_bus*) ; 

__attribute__((used)) static int FUNC7(struct mii_bus *bus, int phy_id, int regnum)
{
	int ret;
	u16 reg_val = 0;
	u8 devad = ((regnum >> 16) & 0x1f);
	u8 is_c45 = !!(regnum & MII_ADDR_C45);
	u16 reg = (u16)(regnum & 0xffff);
	struct hns_mdio_device *mdio_dev = (struct hns_mdio_device *)bus->priv;

	FUNC3(&bus->dev, "mdio read %s,base is %p\n",
		bus->id, mdio_dev->vbase);
	FUNC3(&bus->dev, "phy id=%d, is_c45=%d, devad=%d, reg=%#x!\n",
		phy_id, is_c45, devad, reg);

	/* Step 1: wait for ready */
	ret = FUNC6(bus);
	if (ret) {
		FUNC4(&bus->dev, "MDIO bus is busy\n");
		return ret;
	}

	if (!is_c45) {
		FUNC5(mdio_dev, is_c45,
				   MDIO_C22_READ, phy_id, reg);
	} else {
		FUNC2(mdio_dev, MDIO_ADDR_REG, MDIO_ADDR_DATA_M,
				   MDIO_ADDR_DATA_S, reg);

		/* Step 2; config the cmd-reg to write addr*/
		FUNC5(mdio_dev, is_c45,
				   MDIO_C45_WRITE_ADDR, phy_id, devad);

		/* Step 3: check for read or write opt is finished */
		ret = FUNC6(bus);
		if (ret) {
			FUNC4(&bus->dev, "MDIO bus is busy\n");
			return ret;
		}

		FUNC5(mdio_dev, is_c45,
				   MDIO_C45_READ, phy_id, devad);
	}

	/* Step 5: waitting for MDIO_COMMAND_REG 's mdio_start==0,*/
	/* check for read or write opt is finished */
	ret = FUNC6(bus);
	if (ret) {
		FUNC4(&bus->dev, "MDIO bus is busy\n");
		return ret;
	}

	reg_val = FUNC0(mdio_dev, MDIO_STA_REG, MDIO_STATE_STA_B);
	if (reg_val) {
		FUNC4(&bus->dev, " ERROR! MDIO Read failed!\n");
		return -EBUSY;
	}

	/* Step 6; get out data*/
	reg_val = (u16)FUNC1(mdio_dev, MDIO_RDATA_REG,
					  MDIO_RDATA_DATA_M, MDIO_RDATA_DATA_S);

	return reg_val;
}