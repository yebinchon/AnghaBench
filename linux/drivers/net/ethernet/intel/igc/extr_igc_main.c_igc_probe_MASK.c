#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  revision; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct net_device {int watchdog_timeo; int addr_len; TYPE_7__* dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  features; int /*<<< orphan*/  hw_features; int /*<<< orphan*/  mem_end; int /*<<< orphan*/  mem_start; int /*<<< orphan*/ * netdev_ops; } ;
struct igc_info {int (* get_invariants ) (struct igc_hw*) ;int /*<<< orphan*/  phy_ops; int /*<<< orphan*/  mac_ops; } ;
struct TYPE_10__ {void* current_mode; void* requested_mode; } ;
struct TYPE_16__ {scalar_t__ (* read_mac_addr ) (struct igc_hw*) ;int /*<<< orphan*/  (* reset_hw ) (struct igc_hw*) ;} ;
struct TYPE_12__ {int autoneg_advertised; TYPE_7__ ops; } ;
struct TYPE_15__ {int autoneg; int /*<<< orphan*/  addr; TYPE_7__ ops; } ;
struct TYPE_13__ {scalar_t__ (* validate ) (struct igc_hw*) ;} ;
struct TYPE_14__ {TYPE_4__ ops; } ;
struct TYPE_11__ {int /*<<< orphan*/  func; } ;
struct igc_hw {TYPE_1__ fc; TYPE_3__ phy; TYPE_6__ mac; TYPE_5__ nvm; int /*<<< orphan*/  subsystem_device_id; int /*<<< orphan*/  subsystem_vendor_id; int /*<<< orphan*/  revision_id; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; scalar_t__ hw_addr; TYPE_2__ bus; struct igc_adapter* back; } ;
struct igc_adapter {int fc_autoneg; scalar_t__ io_addr; struct igc_info ei; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  phy_info_timer; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  msg_enable; int /*<<< orphan*/  port_num; struct igc_hw hw; struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MSG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int HZ ; 
 int /*<<< orphan*/  I225_RXPBSIZE_DEFAULT ; 
 int /*<<< orphan*/  I225_TXPBSIZE_DEFAULT ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  IGC_MAX_TX_QUEUES ; 
 int /*<<< orphan*/  IGC_RXPBS ; 
 int /*<<< orphan*/  IGC_TXPBS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  MAX_STD_JUMBO_FRAME_SIZE ; 
 int /*<<< orphan*/  NETIF_F_HW_CSUM ; 
 int /*<<< orphan*/  NETIF_F_NTUPLE ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct igc_adapter*) ; 
 int /*<<< orphan*/  igc_driver_name ; 
 void* igc_fc_default ; 
 scalar_t__ FUNC11 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct igc_adapter*) ; 
 struct igc_info** igc_info_tbl ; 
 int /*<<< orphan*/  igc_netdev_ops ; 
 int /*<<< orphan*/  FUNC13 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct igc_hw*) ; 
 int /*<<< orphan*/  igc_reset_task ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int FUNC17 (struct igc_adapter*) ; 
 int /*<<< orphan*/  igc_update_phy_info ; 
 int /*<<< orphan*/  igc_watchdog ; 
 int /*<<< orphan*/  igc_watchdog_task ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,char*,TYPE_7__*) ; 
 struct igc_adapter* FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*) ; 
 int FUNC27 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC34 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC35 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC37 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC38 (struct pci_dev*) ; 
 int FUNC39 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC41 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC42 (struct igc_hw*) ; 
 scalar_t__ FUNC43 (struct igc_hw*) ; 
 scalar_t__ FUNC44 (struct igc_hw*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC47(struct pci_dev *pdev,
		     const struct pci_device_id *ent)
{
	struct igc_adapter *adapter;
	struct net_device *netdev;
	struct igc_hw *hw;
	const struct igc_info *ei = igc_info_tbl[ent->driver_data];
	int err;

	err = FUNC27(pdev);
	if (err)
		return err;

	err = FUNC6(&pdev->dev, FUNC0(64));
	if (!err) {
		err = FUNC5(&pdev->dev,
					    FUNC0(64));
	} else {
		err = FUNC6(&pdev->dev, FUNC0(32));
		if (err) {
			err = FUNC5(&pdev->dev,
						    FUNC0(32));
			if (err) {
				FUNC4(&pdev->dev, "igc: Wrong DMA config\n");
				goto err_dma;
			}
		}
	}

	err = FUNC30(pdev,
					   FUNC35(pdev,
							   IORESOURCE_MEM),
					   igc_driver_name);
	if (err)
		goto err_pci_reg;

	FUNC28(pdev);

	FUNC37(pdev);

	err = -ENOMEM;
	netdev = FUNC3(sizeof(struct igc_adapter),
				   IGC_MAX_TX_QUEUES);

	if (!netdev)
		goto err_alloc_etherdev;

	FUNC2(netdev, &pdev->dev);

	FUNC36(pdev, netdev);
	adapter = FUNC23(netdev);
	adapter->netdev = netdev;
	adapter->pdev = pdev;
	hw = &adapter->hw;
	hw->back = adapter;
	adapter->port_num = hw->bus.func;
	adapter->msg_enable = FUNC25(debug, DEFAULT_MSG_ENABLE);

	err = FUNC34(pdev);
	if (err)
		goto err_ioremap;

	err = -EIO;
	adapter->io_addr = FUNC18(FUNC33(pdev, 0),
				   FUNC32(pdev, 0));
	if (!adapter->io_addr)
		goto err_ioremap;

	/* hw->hw_addr can be zeroed, so use adapter->io_addr for unmap */
	hw->hw_addr = adapter->io_addr;

	netdev->netdev_ops = &igc_netdev_ops;
	FUNC16(netdev);
	netdev->watchdog_timeo = 5 * HZ;

	netdev->mem_start = FUNC33(pdev, 0);
	netdev->mem_end = FUNC31(pdev, 0);

	/* PCI config space info */
	hw->vendor_id = pdev->vendor;
	hw->device_id = pdev->device;
	hw->revision_id = pdev->revision;
	hw->subsystem_vendor_id = pdev->subsystem_vendor;
	hw->subsystem_device_id = pdev->subsystem_device;

	/* Copy the default MAC and PHY function pointers */
	FUNC21(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
	FUNC21(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));

	/* Initialize skew-specific constants */
	err = ei->get_invariants(hw);
	if (err)
		goto err_sw_init;

	/* Add supported features to the features list*/
	netdev->features |= NETIF_F_HW_CSUM;

	/* setup the private structure */
	err = FUNC17(adapter);
	if (err)
		goto err_sw_init;

	/* copy netdev features into list of user selectable features */
	netdev->hw_features |= NETIF_F_NTUPLE;
	netdev->hw_features |= netdev->features;

	/* MTU range: 68 - 9216 */
	netdev->min_mtu = ETH_MIN_MTU;
	netdev->max_mtu = MAX_STD_JUMBO_FRAME_SIZE;

	/* before reading the NVM, reset the controller to put the device in a
	 * known good starting state
	 */
	hw->mac.ops.reset_hw(hw);

	if (FUNC11(hw)) {
		if (hw->nvm.ops.validate(hw) < 0) {
			FUNC4(&pdev->dev,
				"The NVM Checksum Is Not Valid\n");
			err = -EIO;
			goto err_eeprom;
		}
	}

	if (FUNC7(&pdev->dev, hw->mac.addr)) {
		/* copy the MAC address out of the NVM */
		if (hw->mac.ops.read_mac_addr(hw))
			FUNC4(&pdev->dev, "NVM Read Error\n");
	}

	FUNC21(netdev->dev_addr, hw->mac.addr, netdev->addr_len);

	if (!FUNC20(netdev->dev_addr)) {
		FUNC4(&pdev->dev, "Invalid MAC Address\n");
		err = -EIO;
		goto err_eeprom;
	}

	/* configure RXPBSIZE and TXPBSIZE */
	FUNC46(IGC_RXPBS, I225_RXPBSIZE_DEFAULT);
	FUNC46(IGC_TXPBS, I225_TXPBSIZE_DEFAULT);

	FUNC45(&adapter->watchdog_timer, igc_watchdog, 0);
	FUNC45(&adapter->phy_info_timer, igc_update_phy_info, 0);

	FUNC1(&adapter->reset_task, igc_reset_task);
	FUNC1(&adapter->watchdog_task, igc_watchdog_task);

	/* Initialize link properties that are user-changeable */
	adapter->fc_autoneg = true;
	hw->mac.autoneg = true;
	hw->phy.autoneg_advertised = 0xaf;

	hw->fc.requested_mode = igc_fc_default;
	hw->fc.current_mode = igc_fc_default;

	/* reset the hardware with the new settings */
	FUNC14(adapter);

	/* let the f/w know that the h/w is now under the control of the
	 * driver.
	 */
	FUNC12(adapter);

	FUNC40(netdev->name, "eth%d", IFNAMSIZ);
	err = FUNC39(netdev);
	if (err)
		goto err_register;

	 /* carrier off reporting is important to ethtool even BEFORE open */
	FUNC24(netdev);

	/* Check if Media Autosense is enabled */
	adapter->ei = *ei;

	/* print pcie link status and MAC address */
	FUNC38(pdev);
	FUNC22(netdev, "MAC: %pM\n", netdev->dev_addr);

	return 0;

err_register:
	FUNC13(adapter);
err_eeprom:
	if (!FUNC9(hw))
		FUNC15(hw);
err_sw_init:
	FUNC10(adapter);
	FUNC19(adapter->io_addr);
err_ioremap:
	FUNC8(netdev);
err_alloc_etherdev:
	FUNC29(pdev,
				     FUNC35(pdev, IORESOURCE_MEM));
err_pci_reg:
err_dma:
	FUNC26(pdev);
	return err;
}