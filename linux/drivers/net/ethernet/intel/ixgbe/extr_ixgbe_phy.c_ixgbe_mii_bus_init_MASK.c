#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct mii_bus {char* name; int /*<<< orphan*/  phy_mask; struct device* parent; struct ixgbe_adapter* priv; int /*<<< orphan*/  id; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; } ;
struct TYPE_5__ {int mode_support; } ;
struct TYPE_6__ {TYPE_2__ mdio; } ;
struct ixgbe_hw {int device_id; TYPE_3__ phy; struct ixgbe_adapter* back; } ;
struct ixgbe_adapter {struct mii_bus* mii_bus; TYPE_1__* netdev; struct pci_dev* pdev; } ;
struct device {int dummy; } ;
typedef  int s32 ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  IXGBE_DEV_ID_X550EM_A_10G_T 136 
#define  IXGBE_DEV_ID_X550EM_A_1G_T 135 
#define  IXGBE_DEV_ID_X550EM_A_1G_T_L 134 
#define  IXGBE_DEV_ID_X550EM_A_KR 133 
#define  IXGBE_DEV_ID_X550EM_A_KR_L 132 
#define  IXGBE_DEV_ID_X550EM_A_SFP 131 
#define  IXGBE_DEV_ID_X550EM_A_SFP_N 130 
#define  IXGBE_DEV_ID_X550EM_A_SGMII 129 
#define  IXGBE_DEV_ID_X550EM_A_SGMII_L 128 
 int MDIO_SUPPORTS_C22 ; 
 int MDIO_SUPPORTS_C45 ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 struct mii_bus* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct mii_bus*) ; 
 char* ixgbe_driver_name ; 
 int /*<<< orphan*/  ixgbe_mii_bus_read ; 
 int /*<<< orphan*/  ixgbe_mii_bus_write ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  ixgbe_x550em_a_mii_bus_read ; 
 int /*<<< orphan*/  ixgbe_x550em_a_mii_bus_write ; 
 int FUNC4 (struct mii_bus*) ; 
 char* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 

s32 FUNC7(struct ixgbe_hw *hw)
{
	struct ixgbe_adapter *adapter = hw->back;
	struct pci_dev *pdev = adapter->pdev;
	struct device *dev = &adapter->netdev->dev;
	struct mii_bus *bus;
	int err = -ENODEV;

	bus = FUNC1(dev);
	if (!bus)
		return -ENOMEM;

	switch (hw->device_id) {
	/* C3000 SoCs */
	case IXGBE_DEV_ID_X550EM_A_KR:
	case IXGBE_DEV_ID_X550EM_A_KR_L:
	case IXGBE_DEV_ID_X550EM_A_SFP_N:
	case IXGBE_DEV_ID_X550EM_A_SGMII:
	case IXGBE_DEV_ID_X550EM_A_SGMII_L:
	case IXGBE_DEV_ID_X550EM_A_10G_T:
	case IXGBE_DEV_ID_X550EM_A_SFP:
	case IXGBE_DEV_ID_X550EM_A_1G_T:
	case IXGBE_DEV_ID_X550EM_A_1G_T_L:
		if (!FUNC3(hw))
			goto ixgbe_no_mii_bus;
		bus->read = &ixgbe_x550em_a_mii_bus_read;
		bus->write = &ixgbe_x550em_a_mii_bus_write;
		break;
	default:
		bus->read = &ixgbe_mii_bus_read;
		bus->write = &ixgbe_mii_bus_write;
		break;
	}

	/* Use the position of the device in the PCI hierarchy as the id */
	FUNC6(bus->id, MII_BUS_ID_SIZE, "%s-mdio-%s", ixgbe_driver_name,
		 FUNC5(pdev));

	bus->name = "ixgbe-mdio";
	bus->priv = adapter;
	bus->parent = dev;
	bus->phy_mask = FUNC0(31, 0);

	/* Support clause 22/45 natively.  ixgbe_probe() sets MDIO_EMULATE_C22
	 * unfortunately that causes some clause 22 frames to be sent with
	 * clause 45 addressing.  We don't want that.
	 */
	hw->phy.mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_SUPPORTS_C22;

	err = FUNC4(bus);
	if (!err) {
		adapter->mii_bus = bus;
		return 0;
	}

ixgbe_no_mii_bus:
	FUNC2(dev, bus);
	return err;
}