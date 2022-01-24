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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; scalar_t__ pm_cap; } ;
struct net_device {int features; int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/  irq; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {int /*<<< orphan*/  ipg_state; int /*<<< orphan*/  ipg; TYPE_3__ ipg_timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  phy_id; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; } ;
struct amd8111e_priv {int options; int ext_phy_id; int /*<<< orphan*/  ext_phy_addr; scalar_t__ mmio; TYPE_2__ ipg_data; TYPE_1__ mii_if; int /*<<< orphan*/  napi; int /*<<< orphan*/  ext_phy_option; int /*<<< orphan*/  lock; scalar_t__ pm_cap; struct net_device* amd8111e_net_dev; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD8111E_MAX_MTU ; 
 int /*<<< orphan*/  AMD8111E_MIN_MTU ; 
 int /*<<< orphan*/  AMD8111E_TX_TIMEOUT ; 
 scalar_t__ CHIPID ; 
 int /*<<< orphan*/  CSTATE ; 
 int /*<<< orphan*/  DEFAULT_IPG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int IORESOURCE_MEM ; 
 scalar_t__ IPG_CONVERGE_JIFFIES ; 
 int /*<<< orphan*/  MODULE_NAME ; 
 int /*<<< orphan*/  MODULE_VERS ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int OPTION_DYN_IPG_ENABLE ; 
 int OPTION_INTR_COAL_ENABLE ; 
 scalar_t__ PADR ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  amd8111e_config_ipg ; 
 int /*<<< orphan*/  amd8111e_mdio_read ; 
 int /*<<< orphan*/  amd8111e_mdio_write ; 
 int /*<<< orphan*/  amd8111e_netdev_ops ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  amd8111e_rx_poll ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 size_t card_idx ; 
 int chip_version ; 
 scalar_t__* coalesce ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 scalar_t__* dynamic_ipg ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ jiffies ; 
 struct amd8111e_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ops ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC17 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int FUNC22 (scalar_t__) ; 
 int FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/ * speed_duplex ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct pci_dev *pdev,
				  const struct pci_device_id *ent)
{
	int err, i;
	unsigned long reg_addr,reg_len;
	struct amd8111e_priv *lp;
	struct net_device *dev;

	err = FUNC12(pdev);
	if(err){
		FUNC5(&pdev->dev, "Cannot enable new PCI device\n");
		return err;
	}

	if(!(FUNC15(pdev, 0) & IORESOURCE_MEM)){
		FUNC5(&pdev->dev, "Cannot find PCI base address\n");
		err = -ENODEV;
		goto err_disable_pdev;
	}

	err = FUNC14(pdev, MODULE_NAME);
	if(err){
		FUNC5(&pdev->dev, "Cannot obtain PCI resources\n");
		goto err_disable_pdev;
	}

	FUNC20(pdev);

	/* Find power-management capability. */
	if (!pdev->pm_cap) {
		FUNC5(&pdev->dev, "No Power Management capability\n");
		err = -ENODEV;
		goto err_free_reg;
	}

	/* Initialize DMA */
	if (FUNC18(pdev, FUNC0(32)) < 0) {
		FUNC5(&pdev->dev, "DMA not supported\n");
		err = -ENODEV;
		goto err_free_reg;
	}

	reg_addr = FUNC17(pdev, 0);
	reg_len = FUNC16(pdev, 0);

	dev = FUNC2(sizeof(struct amd8111e_priv));
	if (!dev) {
		err = -ENOMEM;
		goto err_free_reg;
	}

	FUNC1(dev, &pdev->dev);

#if AMD8111E_VLAN_TAG_USED
	dev->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX ;
#endif

	lp = FUNC9(dev);
	lp->pci_dev = pdev;
	lp->amd8111e_net_dev = dev;
	lp->pm_cap = pdev->pm_cap;

	FUNC24(&lp->lock);

	lp->mmio = FUNC7(&pdev->dev, reg_addr, reg_len);
	if (!lp->mmio) {
		FUNC5(&pdev->dev, "Cannot map device registers\n");
		err = -ENOMEM;
		goto err_free_dev;
	}

	/* Initializing MAC address */
	for (i = 0; i < ETH_ALEN; i++)
		dev->dev_addr[i] = FUNC21(lp->mmio + PADR + i);

	/* Setting user defined parametrs */
	lp->ext_phy_option = speed_duplex[card_idx];
	if(coalesce[card_idx])
		lp->options |= OPTION_INTR_COAL_ENABLE;
	if(dynamic_ipg[card_idx++])
		lp->options |= OPTION_DYN_IPG_ENABLE;


	/* Initialize driver entry points */
	dev->netdev_ops = &amd8111e_netdev_ops;
	dev->ethtool_ops = &ops;
	dev->irq =pdev->irq;
	dev->watchdog_timeo = AMD8111E_TX_TIMEOUT;
	dev->min_mtu = AMD8111E_MIN_MTU;
	dev->max_mtu = AMD8111E_MAX_MTU;
	FUNC10(dev, &lp->napi, amd8111e_rx_poll, 32);

#if AMD8111E_VLAN_TAG_USED
	dev->features |= NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX;
#endif
	/* Probe the external PHY */
	FUNC3(dev);

	/* setting mii default values */
	lp->mii_if.dev = dev;
	lp->mii_if.mdio_read = amd8111e_mdio_read;
	lp->mii_if.mdio_write = amd8111e_mdio_write;
	lp->mii_if.phy_id = lp->ext_phy_addr;

	/* Set receive buffer length and set jumbo option*/
	FUNC4(dev);


	err = FUNC23(dev);
	if (err) {
		FUNC5(&pdev->dev, "Cannot register net device\n");
		goto err_free_dev;
	}

	FUNC19(pdev, dev);

	/* Initialize software ipg timer */
	if(lp->options & OPTION_DYN_IPG_ENABLE){
		FUNC25(&lp->ipg_data.ipg_timer, amd8111e_config_ipg, 0);
		lp->ipg_data.ipg_timer.expires = jiffies +
						 IPG_CONVERGE_JIFFIES;
		lp->ipg_data.ipg = DEFAULT_IPG;
		lp->ipg_data.ipg_state = CSTATE;
	}

	/*  display driver and device information */
    	chip_version = (FUNC22(lp->mmio + CHIPID) & 0xf0000000)>>28;
	FUNC6(&pdev->dev, "AMD-8111e Driver Version: %s\n", MODULE_VERS);
	FUNC6(&pdev->dev, "[ Rev %x ] PCI 10/100BaseT Ethernet %pM\n",
		 chip_version, dev->dev_addr);
	if (lp->ext_phy_id)
		FUNC6(&pdev->dev, "Found MII PHY ID 0x%08x at address 0x%02x\n",
			 lp->ext_phy_id, lp->ext_phy_addr);
	else
		FUNC6(&pdev->dev, "Couldn't detect MII PHY, assuming address 0x01\n");

    	return 0;

err_free_dev:
	FUNC8(dev);

err_free_reg:
	FUNC13(pdev);

err_disable_pdev:
	FUNC11(pdev);
	return err;

}