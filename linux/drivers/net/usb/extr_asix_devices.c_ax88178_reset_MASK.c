#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int /*<<< orphan*/  phy_id; } ;
struct usbnet {TYPE_1__* net; TYPE_2__ mii; int /*<<< orphan*/  data; } ;
struct asix_data {int phymode; int ledmode; int /*<<< orphan*/ * mac_addr; } ;
typedef  scalar_t__ __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ADVERTISE_1000FULL ; 
 int ADVERTISE_ALL ; 
 int ADVERTISE_CSMA ; 
 int ADVERTISE_PAUSE_CAP ; 
 int /*<<< orphan*/  AX88178_MEDIUM_DEFAULT ; 
 int /*<<< orphan*/  AX_CMD_READ_EEPROM ; 
 int /*<<< orphan*/  AX_CMD_READ_GPIOS ; 
 int /*<<< orphan*/  AX_CMD_SW_PHY_SELECT ; 
 int /*<<< orphan*/  AX_CMD_WRITE_DISABLE ; 
 int /*<<< orphan*/  AX_CMD_WRITE_ENABLE ; 
 int /*<<< orphan*/  AX_CMD_WRITE_NODE_ID ; 
 int /*<<< orphan*/  AX_DEFAULT_RX_CTL ; 
 int AX_GPIO_GPO1EN ; 
 int AX_GPIO_GPO_1 ; 
 int AX_GPIO_RSE ; 
 int AX_SWRESET_IPPD ; 
 int AX_SWRESET_PRL ; 
 int BMCR_ANENABLE ; 
 int BMCR_RESET ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int PHY_MODE_MARVELL ; 
 int PHY_MODE_RTL8211CL ; 
 scalar_t__ FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (struct usbnet*) ; 

__attribute__((used)) static int FUNC17(struct usbnet *dev)
{
	struct asix_data *data = (struct asix_data *)&dev->data;
	int ret;
	__le16 eeprom;
	u8 status;
	int gpio0 = 0;
	u32 phyid;

	FUNC3(dev, AX_CMD_READ_GPIOS, 0, 0, 1, &status, 0);
	FUNC15(dev->net, "GPIO Status: 0x%04x\n", status);

	FUNC5(dev, AX_CMD_WRITE_ENABLE, 0, 0, 0, NULL, 0);
	FUNC3(dev, AX_CMD_READ_EEPROM, 0x0017, 0, 2, &eeprom, 0);
	FUNC5(dev, AX_CMD_WRITE_DISABLE, 0, 0, 0, NULL, 0);

	FUNC15(dev->net, "EEPROM index 0x17 is 0x%04x\n", eeprom);

	if (eeprom == FUNC9(0xffff)) {
		data->phymode = PHY_MODE_MARVELL;
		data->ledmode = 0;
		gpio0 = 1;
	} else {
		data->phymode = FUNC10(eeprom) & 0x7F;
		data->ledmode = FUNC10(eeprom) >> 8;
		gpio0 = (FUNC10(eeprom) & 0x80) ? 0 : 1;
	}
	FUNC15(dev->net, "GPIO0: %d, PhyMode: %d\n", gpio0, data->phymode);

	/* Power up external GigaPHY through AX88178 GPIO pin */
	FUNC6(dev, AX_GPIO_RSE | AX_GPIO_GPO_1 |
			AX_GPIO_GPO1EN, 40, 0);
	if ((FUNC10(eeprom) >> 8) != 1) {
		FUNC6(dev, 0x003c, 30, 0);
		FUNC6(dev, 0x001c, 300, 0);
		FUNC6(dev, 0x003c, 30, 0);
	} else {
		FUNC15(dev->net, "gpio phymode == 1 path\n");
		FUNC6(dev, AX_GPIO_GPO1EN, 30, 0);
		FUNC6(dev, AX_GPIO_GPO1EN | AX_GPIO_GPO_1, 30, 0);
	}

	/* Read PHYID register *AFTER* powering up PHY */
	phyid = FUNC0(dev);
	FUNC15(dev->net, "PHYID=0x%08x\n", phyid);

	/* Set AX88178 to enable MII/GMII/RGMII interface for external PHY */
	FUNC5(dev, AX_CMD_SW_PHY_SELECT, 0, 0, 0, NULL, 0);

	FUNC4(dev, 0, 0);
	FUNC14(150);

	FUNC4(dev, AX_SWRESET_PRL | AX_SWRESET_IPPD, 0);
	FUNC14(150);

	FUNC8(dev, 0, 0);

	if (data->phymode == PHY_MODE_MARVELL) {
		FUNC11(dev);
		FUNC14(60);
	} else if (data->phymode == PHY_MODE_RTL8211CL)
		FUNC16(dev);

	FUNC2(dev, BMCR_RESET | BMCR_ANENABLE);
	FUNC1(dev->net, dev->mii.phy_id, MII_ADVERTISE,
			ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP);
	FUNC1(dev->net, dev->mii.phy_id, MII_CTRL1000,
			ADVERTISE_1000FULL);

	FUNC7(dev, AX88178_MEDIUM_DEFAULT, 0);
	FUNC13(&dev->mii);

	/* Rewrite MAC address */
	FUNC12(data->mac_addr, dev->net->dev_addr, ETH_ALEN);
	ret = FUNC5(dev, AX_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
							data->mac_addr, 0);
	if (ret < 0)
		return ret;

	ret = FUNC8(dev, AX_DEFAULT_RX_CTL, 0);
	if (ret < 0)
		return ret;

	return 0;
}