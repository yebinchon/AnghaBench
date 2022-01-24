#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_flags; int /*<<< orphan*/  pm_cap; } ;
struct net_device {int hw_features; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/  irq; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_2__ {int mode_support; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; scalar_t__ mmds; scalar_t__ prtad; } ;
struct alx_hw {int /*<<< orphan*/  hw_addr; TYPE_1__ mdio; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  flowctrl; int /*<<< orphan*/  adv_cfg; struct pci_dev* pdev; int /*<<< orphan*/  mdio_lock; } ;
struct alx_priv {int msg_enable; int /*<<< orphan*/  reset_wk; int /*<<< orphan*/  link_check_wk; struct alx_hw hw; struct net_device* dev; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int ALX_DEV_QUIRK_MSI_INTX_DISABLE_BUG ; 
 int /*<<< orphan*/  ALX_MAX_TX_QUEUES ; 
 int /*<<< orphan*/  ALX_WATCHDOG_TIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MDIO_EMULATE_C22 ; 
 int MDIO_SUPPORTS_C22 ; 
 int MDIO_SUPPORTS_C45 ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int NETIF_MSG_HW ; 
 int NETIF_MSG_IFUP ; 
 int NETIF_MSG_LINK ; 
 int NETIF_MSG_RX_ERR ; 
 int NETIF_MSG_TX_ERR ; 
 int NETIF_MSG_WOL ; 
 int /*<<< orphan*/  PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  alx_drv_name ; 
 int /*<<< orphan*/  alx_ethtool_ops ; 
 scalar_t__ FUNC4 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct alx_hw*) ; 
 int FUNC6 (struct alx_priv*) ; 
 int /*<<< orphan*/  alx_link_check ; 
 int /*<<< orphan*/  alx_mdio_read ; 
 int /*<<< orphan*/  alx_mdio_write ; 
 int /*<<< orphan*/  alx_netdev_ops ; 
 int FUNC7 (struct alx_hw*) ; 
 int /*<<< orphan*/  alx_reset ; 
 int FUNC8 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct alx_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct alx_hw*) ; 
 int FUNC11 (struct alx_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct alx_priv* FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*) ; 
 int FUNC29 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*,struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int FUNC32 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC34(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev;
	struct alx_priv *alx;
	struct alx_hw *hw;
	bool phy_configured;
	int err;

	err = FUNC24(pdev);
	if (err)
		return err;

	/* The alx chip can DMA to 64-bit addresses, but it uses a single
	 * shared register for the high 32 bits, so only a single, aligned,
	 * 4 GB physical address range can be used for descriptors.
	 */
	if (!FUNC15(&pdev->dev, FUNC0(64))) {
		FUNC12(&pdev->dev, "DMA to 64-BIT addresses\n");
	} else {
		err = FUNC15(&pdev->dev, FUNC0(32));
		if (err) {
			FUNC13(&pdev->dev, "No usable DMA config, aborting\n");
			goto out_pci_disable;
		}
	}

	err = FUNC29(pdev, alx_drv_name);
	if (err) {
		FUNC13(&pdev->dev,
			"pci_request_mem_regions failed\n");
		goto out_pci_disable;
	}

	FUNC25(pdev);
	FUNC31(pdev);

	if (!pdev->pm_cap) {
		FUNC13(&pdev->dev,
			"Can't find power management capability, aborting\n");
		err = -EIO;
		goto out_pci_release;
	}

	netdev = FUNC3(sizeof(*alx),
				    ALX_MAX_TX_QUEUES, 1);
	if (!netdev) {
		err = -ENOMEM;
		goto out_pci_release;
	}

	FUNC2(netdev, &pdev->dev);
	alx = FUNC21(netdev);
	FUNC33(&alx->hw.mdio_lock);
	FUNC33(&alx->irq_lock);
	FUNC33(&alx->stats_lock);
	alx->dev = netdev;
	alx->hw.pdev = pdev;
	alx->msg_enable = NETIF_MSG_LINK | NETIF_MSG_HW | NETIF_MSG_IFUP |
			  NETIF_MSG_TX_ERR | NETIF_MSG_RX_ERR | NETIF_MSG_WOL;
	hw = &alx->hw;
	FUNC30(pdev, alx);

	hw->hw_addr = FUNC26(pdev, 0);
	if (!hw->hw_addr) {
		FUNC13(&pdev->dev, "cannot map device registers\n");
		err = -EIO;
		goto out_free_netdev;
	}

	netdev->netdev_ops = &alx_netdev_ops;
	netdev->ethtool_ops = &alx_ethtool_ops;
	netdev->irq = FUNC27(pdev, 0);
	netdev->watchdog_timeo = ALX_WATCHDOG_TIME;

	if (ent->driver_data & ALX_DEV_QUIRK_MSI_INTX_DISABLE_BUG)
		pdev->dev_flags |= PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG;

	err = FUNC6(alx);
	if (err) {
		FUNC13(&pdev->dev, "net device private data init failed\n");
		goto out_unmap;
	}

	FUNC9(hw);

	phy_configured = FUNC7(hw);

	if (!phy_configured)
		FUNC10(hw);

	err = FUNC8(hw);
	if (err) {
		FUNC13(&pdev->dev, "MAC Reset failed, error = %d\n", err);
		goto out_unmap;
	}

	/* setup link to put it in a known good starting state */
	if (!phy_configured) {
		err = FUNC11(hw, hw->adv_cfg, hw->flowctrl);
		if (err) {
			FUNC13(&pdev->dev,
				"failed to configure PHY speed/duplex (err=%d)\n",
				err);
			goto out_unmap;
		}
	}

	netdev->hw_features = NETIF_F_SG |
			      NETIF_F_HW_CSUM |
			      NETIF_F_RXCSUM |
			      NETIF_F_TSO |
			      NETIF_F_TSO6;

	if (FUNC4(hw, hw->perm_addr)) {
		FUNC14(&pdev->dev,
			 "Invalid permanent address programmed, using random one\n");
		FUNC16(netdev);
		FUNC19(hw->perm_addr, netdev->dev_addr, netdev->addr_len);
	}

	FUNC19(hw->mac_addr, hw->perm_addr, ETH_ALEN);
	FUNC19(netdev->dev_addr, hw->mac_addr, ETH_ALEN);
	FUNC19(netdev->perm_addr, hw->perm_addr, ETH_ALEN);

	hw->mdio.prtad = 0;
	hw->mdio.mmds = 0;
	hw->mdio.dev = netdev;
	hw->mdio.mode_support = MDIO_SUPPORTS_C45 |
				MDIO_SUPPORTS_C22 |
				MDIO_EMULATE_C22;
	hw->mdio.mdio_read = alx_mdio_read;
	hw->mdio.mdio_write = alx_mdio_write;

	if (!FUNC5(hw)) {
		FUNC13(&pdev->dev, "failed to identify PHY\n");
		err = -EIO;
		goto out_unmap;
	}

	FUNC1(&alx->link_check_wk, alx_link_check);
	FUNC1(&alx->reset_wk, alx_reset);
	FUNC22(netdev);

	err = FUNC32(netdev);
	if (err) {
		FUNC13(&pdev->dev, "register netdevice failed\n");
		goto out_unmap;
	}

	FUNC20(netdev,
		    "Qualcomm Atheros AR816x/AR817x Ethernet [%pM]\n",
		    netdev->dev_addr);

	return 0;

out_unmap:
	FUNC18(hw->hw_addr);
out_free_netdev:
	FUNC17(netdev);
out_pci_release:
	FUNC28(pdev);
out_pci_disable:
	FUNC23(pdev);
	return err;
}