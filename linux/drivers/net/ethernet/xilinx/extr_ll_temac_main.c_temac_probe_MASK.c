#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct temac_local {void const* regs; int temac_features; void const* sdma_regs; int rx_irq; int tx_irq; int tx_chnl_ctrl; int rx_chnl_ctrl; void const* phy_node; TYPE_2__* dev; struct net_device* ndev; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  phy_name; TYPE_1__* mii_bus; void* dma_out; void* dma_in; int /*<<< orphan*/  temac_iow; int /*<<< orphan*/  temac_ior; int /*<<< orphan*/ * indirect_lock; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  options; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_13__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct net_device {int /*<<< orphan*/  features; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct ll_temac_platform_data {int reg_little_endian; int tx_irq_timeout; int tx_irq_count; int rx_irq_timeout; int rx_irq_count; void const* mac_addr; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  phy_addr; scalar_t__ dma_little_endian; scalar_t__ rxcsum; scalar_t__ txcsum; int /*<<< orphan*/ * indirect_lock; } ;
typedef  void const device_node ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_12__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void const*) ; 
 int /*<<< orphan*/  NETIF_F_GSO ; 
 int /*<<< orphan*/  NETIF_F_HIGHDMA ; 
 int /*<<< orphan*/  NETIF_F_HW_CSUM ; 
 int /*<<< orphan*/  NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int /*<<< orphan*/  NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  NETIF_F_HW_VLAN_CTAG_TX ; 
 int /*<<< orphan*/  NETIF_F_IPV6_CSUM ; 
 int /*<<< orphan*/  NETIF_F_IP_CSUM ; 
 int /*<<< orphan*/  NETIF_F_LRO ; 
 int /*<<< orphan*/  NETIF_F_MULTI_QUEUE ; 
 int /*<<< orphan*/  NETIF_F_SG ; 
 int /*<<< orphan*/  NETIF_F_VLAN_CHALLENGED ; 
 char* PHY_ID_FMT ; 
 int FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,TYPE_2__*) ; 
 int TEMAC_FEATURE_RX_CSUM ; 
 int TEMAC_FEATURE_TX_CSUM ; 
 int /*<<< orphan*/  XTE_OPTION_DEFAULTS ; 
 int /*<<< orphan*/  _temac_ior_be ; 
 int /*<<< orphan*/  _temac_ior_le ; 
 int /*<<< orphan*/  _temac_iow_be ; 
 int /*<<< orphan*/  _temac_iow_le ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,void const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 struct ll_temac_platform_data* FUNC6 (TYPE_2__*) ; 
 void const* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 struct net_device* FUNC9 (TYPE_2__*,int) ; 
 void* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void const* FUNC12 (TYPE_2__*,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC13 (void const*,int) ; 
 struct temac_local* FUNC14 (struct net_device*) ; 
 void* FUNC15 (void const*) ; 
 scalar_t__ FUNC16 (void const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (void const*) ; 
 void* FUNC18 (void const*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC19 (struct platform_device*,int) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct net_device*) ; 
 int FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct resource*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  temac_attr_group ; 
 scalar_t__ FUNC28 (struct temac_local*,struct platform_device*,void const*) ; 
 void* temac_dma_in32_be ; 
 void* temac_dma_in32_le ; 
 void* temac_dma_out32_be ; 
 void* temac_dma_out32_le ; 
 int /*<<< orphan*/  temac_ethtool_ops ; 
 int /*<<< orphan*/  FUNC29 (struct net_device*,void const*) ; 
 int FUNC30 (struct temac_local*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct temac_local*) ; 
 int /*<<< orphan*/  temac_netdev_ops ; 

__attribute__((used)) static int FUNC32(struct platform_device *pdev)
{
	struct ll_temac_platform_data *pdata = FUNC6(&pdev->dev);
	struct device_node *temac_np = FUNC7(&pdev->dev), *dma_np;
	struct temac_local *lp;
	struct net_device *ndev;
	struct resource *res;
	const void *addr;
	__be32 *p;
	bool little_endian;
	int rc = 0;

	/* Init network device structure */
	ndev = FUNC9(&pdev->dev, sizeof(*lp));
	if (!ndev)
		return -ENOMEM;

	FUNC21(pdev, ndev);
	FUNC2(ndev, &pdev->dev);
	ndev->features = NETIF_F_SG;
	ndev->netdev_ops = &temac_netdev_ops;
	ndev->ethtool_ops = &temac_ethtool_ops;
#if 0
	ndev->features |= NETIF_F_IP_CSUM; /* Can checksum TCP/UDP over IPv4. */
	ndev->features |= NETIF_F_HW_CSUM; /* Can checksum all the packets. */
	ndev->features |= NETIF_F_IPV6_CSUM; /* Can checksum IPV6 TCP/UDP */
	ndev->features |= NETIF_F_HIGHDMA; /* Can DMA to high memory. */
	ndev->features |= NETIF_F_HW_VLAN_CTAG_TX; /* Transmit VLAN hw accel */
	ndev->features |= NETIF_F_HW_VLAN_CTAG_RX; /* Receive VLAN hw acceleration */
	ndev->features |= NETIF_F_HW_VLAN_CTAG_FILTER; /* Receive VLAN filtering */
	ndev->features |= NETIF_F_VLAN_CHALLENGED; /* cannot handle VLAN pkts */
	ndev->features |= NETIF_F_GSO; /* Enable software GSO. */
	ndev->features |= NETIF_F_MULTI_QUEUE; /* Has multiple TX/RX queues */
	ndev->features |= NETIF_F_LRO; /* large receive offload */
#endif

	/* setup temac private info structure */
	lp = FUNC14(ndev);
	lp->ndev = ndev;
	lp->dev = &pdev->dev;
	lp->options = XTE_OPTION_DEFAULTS;
	FUNC25(&lp->rx_lock);

	/* Setup mutex for synchronization of indirect register access */
	if (pdata) {
		if (!pdata->indirect_lock) {
			FUNC5(&pdev->dev,
				"indirect_lock missing in platform_data\n");
			return -EINVAL;
		}
		lp->indirect_lock = pdata->indirect_lock;
	} else {
		lp->indirect_lock = FUNC11(&pdev->dev,
						 sizeof(*lp->indirect_lock),
						 GFP_KERNEL);
		FUNC25(lp->indirect_lock);
	}

	/* map device registers */
	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	lp->regs = FUNC10(&pdev->dev, res->start,
					FUNC23(res));
	if (FUNC0(lp->regs)) {
		FUNC5(&pdev->dev, "could not map TEMAC registers\n");
		return FUNC1(lp->regs);
	}

	/* Select register access functions with the specified
	 * endianness mode.  Default for OF devices is big-endian.
	 */
	little_endian = false;
	if (temac_np) {
		if (FUNC16(temac_np, "little-endian", NULL))
			little_endian = true;
	} else if (pdata) {
		little_endian = pdata->reg_little_endian;
	}
	if (little_endian) {
		lp->temac_ior = _temac_ior_le;
		lp->temac_iow = _temac_iow_le;
	} else {
		lp->temac_ior = _temac_ior_be;
		lp->temac_iow = _temac_iow_be;
	}

	/* Setup checksum offload, but default to off if not specified */
	lp->temac_features = 0;
	if (temac_np) {
		p = (__be32 *)FUNC16(temac_np, "xlnx,txcsum", NULL);
		if (p && FUNC3(*p))
			lp->temac_features |= TEMAC_FEATURE_TX_CSUM;
		p = (__be32 *)FUNC16(temac_np, "xlnx,rxcsum", NULL);
		if (p && FUNC3(*p))
			lp->temac_features |= TEMAC_FEATURE_RX_CSUM;
	} else if (pdata) {
		if (pdata->txcsum)
			lp->temac_features |= TEMAC_FEATURE_TX_CSUM;
		if (pdata->rxcsum)
			lp->temac_features |= TEMAC_FEATURE_RX_CSUM;
	}
	if (lp->temac_features & TEMAC_FEATURE_TX_CSUM)
		/* Can checksum TCP/UDP over IPv4. */
		ndev->features |= NETIF_F_IP_CSUM;

	/* Setup LocalLink DMA */
	if (temac_np) {
		/* Find the DMA node, map the DMA registers, and
		 * decode the DMA IRQs.
		 */
		dma_np = FUNC18(temac_np, "llink-connected", 0);
		if (!dma_np) {
			FUNC5(&pdev->dev, "could not find DMA node\n");
			return -ENODEV;
		}

		/* Setup the DMA register accesses, could be DCR or
		 * memory mapped.
		 */
		if (FUNC28(lp, pdev, dma_np)) {
			/* no DCR in the device tree, try non-DCR */
			lp->sdma_regs = FUNC12(&pdev->dev, dma_np, 0,
						      NULL);
			if (FUNC0(lp->sdma_regs)) {
				FUNC5(&pdev->dev,
					"unable to map DMA registers\n");
				FUNC17(dma_np);
				return FUNC1(lp->sdma_regs);
			}
			if (FUNC16(dma_np, "little-endian", NULL)) {
				lp->dma_in = temac_dma_in32_le;
				lp->dma_out = temac_dma_out32_le;
			} else {
				lp->dma_in = temac_dma_in32_be;
				lp->dma_out = temac_dma_out32_be;
			}
			FUNC4(&pdev->dev, "MEM base: %p\n", lp->sdma_regs);
		}

		/* Get DMA RX and TX interrupts */
		lp->rx_irq = FUNC13(dma_np, 0);
		lp->tx_irq = FUNC13(dma_np, 1);

		/* Use defaults for IRQ delay/coalescing setup.  These
		 * are configuration values, so does not belong in
		 * device-tree.
		 */
		lp->tx_chnl_ctrl = 0x10220000;
		lp->rx_chnl_ctrl = 0xff070000;

		/* Finished with the DMA node; drop the reference */
		FUNC17(dma_np);
	} else if (pdata) {
		/* 2nd memory resource specifies DMA registers */
		res = FUNC20(pdev, IORESOURCE_MEM, 1);
		lp->sdma_regs = FUNC10(&pdev->dev, res->start,
						     FUNC23(res));
		if (FUNC0(lp->sdma_regs)) {
			FUNC5(&pdev->dev,
				"could not map DMA registers\n");
			return FUNC1(lp->sdma_regs);
		}
		if (pdata->dma_little_endian) {
			lp->dma_in = temac_dma_in32_le;
			lp->dma_out = temac_dma_out32_le;
		} else {
			lp->dma_in = temac_dma_in32_be;
			lp->dma_out = temac_dma_out32_be;
		}

		/* Get DMA RX and TX interrupts */
		lp->rx_irq = FUNC19(pdev, 0);
		lp->tx_irq = FUNC19(pdev, 1);

		/* IRQ delay/coalescing setup */
		if (pdata->tx_irq_timeout || pdata->tx_irq_count)
			lp->tx_chnl_ctrl = (pdata->tx_irq_timeout << 24) |
				(pdata->tx_irq_count << 16);
		else
			lp->tx_chnl_ctrl = 0x10220000;
		if (pdata->rx_irq_timeout || pdata->rx_irq_count)
			lp->rx_chnl_ctrl = (pdata->rx_irq_timeout << 24) |
				(pdata->rx_irq_count << 16);
		else
			lp->rx_chnl_ctrl = 0xff070000;
	}

	/* Error handle returned DMA RX and TX interrupts */
	if (lp->rx_irq < 0) {
		if (lp->rx_irq != -EPROBE_DEFER)
			FUNC5(&pdev->dev, "could not get DMA RX irq\n");
		return lp->rx_irq;
	}
	if (lp->tx_irq < 0) {
		if (lp->tx_irq != -EPROBE_DEFER)
			FUNC5(&pdev->dev, "could not get DMA TX irq\n");
		return lp->tx_irq;
	}

	if (temac_np) {
		/* Retrieve the MAC address */
		addr = FUNC15(temac_np);
		if (FUNC0(addr)) {
			FUNC5(&pdev->dev, "could not find MAC address\n");
			return -ENODEV;
		}
		FUNC29(ndev, addr);
	} else if (pdata) {
		FUNC29(ndev, pdata->mac_addr);
	}

	rc = FUNC30(lp, pdev);
	if (rc)
		FUNC8(&pdev->dev, "error registering MDIO bus\n");

	if (temac_np) {
		lp->phy_node = FUNC18(temac_np, "phy-handle", 0);
		if (lp->phy_node)
			FUNC4(lp->dev, "using PHY node %pOF\n", temac_np);
	} else if (pdata) {
		FUNC24(lp->phy_name, sizeof(lp->phy_name),
			 PHY_ID_FMT, lp->mii_bus->id, pdata->phy_addr);
		lp->phy_interface = pdata->phy_interface;
	}

	/* Add the device attributes */
	rc = FUNC26(&lp->dev->kobj, &temac_attr_group);
	if (rc) {
		FUNC5(lp->dev, "Error creating sysfs files\n");
		goto err_sysfs_create;
	}

	rc = FUNC22(lp->ndev);
	if (rc) {
		FUNC5(lp->dev, "register_netdev() error (%i)\n", rc);
		goto err_register_ndev;
	}

	return 0;

err_register_ndev:
	FUNC27(&lp->dev->kobj, &temac_attr_group);
err_sysfs_create:
	if (lp->phy_node)
		FUNC17(lp->phy_node);
	FUNC31(lp);
	return rc;
}