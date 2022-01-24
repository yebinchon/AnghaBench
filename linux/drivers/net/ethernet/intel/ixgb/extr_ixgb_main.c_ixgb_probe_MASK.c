#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int watchdog_timeo; int hw_features; int features; int vlan_features; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; scalar_t__ max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  io_base; struct ixgb_adapter* back; } ;
struct ixgb_adapter {int bd_number; TYPE_1__ hw; struct net_device* netdev; int /*<<< orphan*/  tx_timeout_task; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  part_num; scalar_t__ link_duplex; scalar_t__ link_speed; int /*<<< orphan*/  napi; int /*<<< orphan*/  msg_enable; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAR_0 ; 
 int BAR_1 ; 
 int BAR_5 ; 
 int /*<<< orphan*/  DEFAULT_MSG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IORESOURCE_IO ; 
 scalar_t__ IXGB_MAX_JUMBO_FRAME_SIZE ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  debug ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  ixgb_clean ; 
 int /*<<< orphan*/  ixgb_driver_name ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  ixgb_netdev_ops ; 
 int /*<<< orphan*/  FUNC11 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int FUNC13 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  ixgb_tx_timeout_task ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  ixgb_watchdog ; 
 struct ixgb_adapter* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct ixgb_adapter*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct ixgb_adapter*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct pci_dev*,int) ; 
 scalar_t__ FUNC28 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC33 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC37(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev = NULL;
	struct ixgb_adapter *adapter;
	static int cards_found = 0;
	int pci_using_dac;
	int i;
	int err;

	err = FUNC22(pdev);
	if (err)
		return err;

	pci_using_dac = 0;
	err = FUNC4(&pdev->dev, FUNC0(64));
	if (!err) {
		pci_using_dac = 1;
	} else {
		err = FUNC4(&pdev->dev, FUNC0(32));
		if (err) {
			FUNC32("No usable DMA configuration, aborting\n");
			goto err_dma_mask;
		}
	}

	err = FUNC26(pdev, ixgb_driver_name);
	if (err)
		goto err_request_regions;

	FUNC31(pdev);

	netdev = FUNC3(sizeof(struct ixgb_adapter));
	if (!netdev) {
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	FUNC2(netdev, &pdev->dev);

	FUNC30(pdev, netdev);
	adapter = FUNC15(netdev);
	adapter->netdev = netdev;
	adapter->pdev = pdev;
	adapter->hw.back = adapter;
	adapter->msg_enable = FUNC19(debug, DEFAULT_MSG_ENABLE);

	adapter->hw.hw_addr = FUNC23(pdev, BAR_0);
	if (!adapter->hw.hw_addr) {
		err = -EIO;
		goto err_ioremap;
	}

	for (i = BAR_1; i <= BAR_5; i++) {
		if (FUNC28(pdev, i) == 0)
			continue;
		if (FUNC27(pdev, i) & IORESOURCE_IO) {
			adapter->hw.io_base = FUNC29(pdev, i);
			break;
		}
	}

	netdev->netdev_ops = &ixgb_netdev_ops;
	FUNC12(netdev);
	netdev->watchdog_timeo = 5 * HZ;
	FUNC20(netdev, &adapter->napi, ixgb_clean, 64);

	FUNC35(netdev->name, FUNC24(pdev), sizeof(netdev->name) - 1);

	adapter->bd_number = cards_found;
	adapter->link_speed = 0;
	adapter->link_duplex = 0;

	/* setup the private structure */

	err = FUNC13(adapter);
	if (err)
		goto err_sw_init;

	netdev->hw_features = NETIF_F_SG |
			   NETIF_F_TSO |
			   NETIF_F_HW_CSUM |
			   NETIF_F_HW_VLAN_CTAG_TX |
			   NETIF_F_HW_VLAN_CTAG_RX;
	netdev->features = netdev->hw_features |
			   NETIF_F_HW_VLAN_CTAG_FILTER;
	netdev->hw_features |= NETIF_F_RXCSUM;

	if (pci_using_dac) {
		netdev->features |= NETIF_F_HIGHDMA;
		netdev->vlan_features |= NETIF_F_HIGHDMA;
	}

	/* MTU range: 68 - 16114 */
	netdev->min_mtu = ETH_MIN_MTU;
	netdev->max_mtu = IXGB_MAX_JUMBO_FRAME_SIZE - ETH_HLEN;

	/* make sure the EEPROM is good */

	if (!FUNC14(&adapter->hw)) {
		FUNC17(adapter, probe, adapter->netdev,
			  "The EEPROM Checksum Is Not Valid\n");
		err = -EIO;
		goto err_eeprom;
	}

	FUNC9(&adapter->hw, netdev->dev_addr);

	if (!FUNC7(netdev->dev_addr)) {
		FUNC17(adapter, probe, adapter->netdev, "Invalid MAC Address\n");
		err = -EIO;
		goto err_eeprom;
	}

	adapter->part_num = FUNC10(&adapter->hw);

	FUNC36(&adapter->watchdog_timer, ixgb_watchdog, 0);

	FUNC1(&adapter->tx_timeout_task, ixgb_tx_timeout_task);

	FUNC34(netdev->name, "eth%d");
	err = FUNC33(netdev);
	if (err)
		goto err_register;

	/* carrier off reporting is important to ethtool even BEFORE open */
	FUNC16(netdev);

	FUNC18(adapter, probe, adapter->netdev,
		   "Intel(R) PRO/10GbE Network Connection\n");
	FUNC8(adapter);
	/* reset the hardware with the new settings */

	FUNC11(adapter);

	cards_found++;
	return 0;

err_register:
err_sw_init:
err_eeprom:
	FUNC6(adapter->hw.hw_addr);
err_ioremap:
	FUNC5(netdev);
err_alloc_etherdev:
	FUNC25(pdev);
err_request_regions:
err_dma_mask:
	FUNC21(pdev);
	return err;
}