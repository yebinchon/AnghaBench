#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct phy_device {int dummy; } ;
struct net_device {int watchdog_timeo; int irq; int hw_features; int features; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/ * ethtool_ops; } ;
struct ftgmac100 {int tx_pause; int rx_pause; int aneg_pause; int is_aspeed; int use_ncsi; int /*<<< orphan*/  res; int /*<<< orphan*/  base; int /*<<< orphan*/  new_tx_q_entries; int /*<<< orphan*/  tx_q_entries; int /*<<< orphan*/  new_rx_q_entries; int /*<<< orphan*/  rx_q_entries; struct net_device* netdev; int /*<<< orphan*/  ndev; void* txdes0_edotr_mask; void* rxdes0_edorr_mask; int /*<<< orphan*/  reset_task; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_NET_NCSI ; 
 int /*<<< orphan*/  DEF_RX_QUEUE_ENTRIES ; 
 int /*<<< orphan*/  DEF_TX_QUEUE_ENTRIES ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NETIF_F_GRO ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_1__*) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  ftgmac100_adjust_link ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  ftgmac100_ethtool_ops ; 
 int /*<<< orphan*/  FUNC10 (struct ftgmac100*) ; 
 int /*<<< orphan*/  ftgmac100_ncsi_handler ; 
 int /*<<< orphan*/  ftgmac100_netdev_ops ; 
 int /*<<< orphan*/  ftgmac100_reset_task ; 
 int /*<<< orphan*/  FUNC11 (struct ftgmac100*) ; 
 int FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 struct ftgmac100* FUNC17 (struct net_device*) ; 
 scalar_t__ FUNC18 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*,char*) ; 
 scalar_t__ FUNC20 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct phy_device* FUNC21 (struct net_device*,struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct phy_device*) ; 
 int FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC25 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct net_device*) ; 
 int FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct resource*) ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct resource *res;
	int irq;
	struct net_device *netdev;
	struct ftgmac100 *priv;
	struct device_node *np;
	int err = 0;

	if (!pdev)
		return -ENODEV;

	res = FUNC25(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENXIO;

	irq = FUNC24(pdev, 0);
	if (irq < 0)
		return irq;

	/* setup net_device */
	netdev = FUNC4(sizeof(*priv));
	if (!netdev) {
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	FUNC3(netdev, &pdev->dev);

	netdev->ethtool_ops = &ftgmac100_ethtool_ops;
	netdev->netdev_ops = &ftgmac100_netdev_ops;
	netdev->watchdog_timeo = 5 * HZ;

	FUNC26(pdev, netdev);

	/* setup private data */
	priv = FUNC17(netdev);
	priv->netdev = netdev;
	priv->dev = &pdev->dev;
	FUNC1(&priv->reset_task, ftgmac100_reset_task);

	/* map io memory */
	priv->res = FUNC29(res->start, FUNC30(res),
				       FUNC7(&pdev->dev));
	if (!priv->res) {
		FUNC5(&pdev->dev, "Could not reserve memory region\n");
		err = -ENOMEM;
		goto err_req_mem;
	}

	priv->base = FUNC13(res->start, FUNC30(res));
	if (!priv->base) {
		FUNC5(&pdev->dev, "Failed to ioremap ethernet registers\n");
		err = -EIO;
		goto err_ioremap;
	}

	netdev->irq = irq;

	/* Enable pause */
	priv->tx_pause = true;
	priv->rx_pause = true;
	priv->aneg_pause = true;

	/* MAC address from chip or random one */
	FUNC10(priv);

	np = pdev->dev.of_node;
	if (np && (FUNC18(np, "aspeed,ast2400-mac") ||
		   FUNC18(np, "aspeed,ast2500-mac") ||
		   FUNC18(np, "aspeed,ast2600-mac"))) {
		priv->rxdes0_edorr_mask = FUNC0(30);
		priv->txdes0_edotr_mask = FUNC0(30);
		priv->is_aspeed = true;
	} else {
		priv->rxdes0_edorr_mask = FUNC0(15);
		priv->txdes0_edotr_mask = FUNC0(15);
	}

	if (np && FUNC20(np, "use-ncsi", NULL)) {
		if (!FUNC2(CONFIG_NET_NCSI)) {
			FUNC5(&pdev->dev, "NCSI stack not enabled\n");
			goto err_ncsi_dev;
		}

		FUNC6(&pdev->dev, "Using NCSI interface\n");
		priv->use_ncsi = true;
		priv->ndev = FUNC15(netdev, ftgmac100_ncsi_handler);
		if (!priv->ndev)
			goto err_ncsi_dev;
	} else if (np && FUNC20(np, "phy-handle", NULL)) {
		struct phy_device *phy;

		phy = FUNC21(priv->netdev, np,
					     &ftgmac100_adjust_link);
		if (!phy) {
			FUNC5(&pdev->dev, "Failed to connect to phy\n");
			goto err_setup_mdio;
		}

		/* Indicate that we support PAUSE frames (see comment in
		 * Documentation/networking/phy.txt)
		 */
		FUNC23(phy);

		/* Display what we found */
		FUNC22(phy);
	} else if (np && !FUNC19(np, "mdio")) {
		/* Support legacy ASPEED devicetree descriptions that decribe a
		 * MAC with an embedded MDIO controller but have no "mdio"
		 * child node. Automatically scan the MDIO bus for available
		 * PHYs.
		 */
		priv->use_ncsi = false;
		err = FUNC12(netdev);
		if (err)
			goto err_setup_mdio;
	}

	if (priv->is_aspeed)
		FUNC11(priv);

	/* Default ring sizes */
	priv->rx_q_entries = priv->new_rx_q_entries = DEF_RX_QUEUE_ENTRIES;
	priv->tx_q_entries = priv->new_tx_q_entries = DEF_TX_QUEUE_ENTRIES;

	/* Base feature set */
	netdev->hw_features = NETIF_F_RXCSUM | NETIF_F_HW_CSUM |
		NETIF_F_GRO | NETIF_F_SG | NETIF_F_HW_VLAN_CTAG_RX |
		NETIF_F_HW_VLAN_CTAG_TX;

	if (priv->use_ncsi)
		netdev->hw_features |= NETIF_F_HW_VLAN_CTAG_FILTER;

	/* AST2400  doesn't have working HW checksum generation */
	if (np && (FUNC18(np, "aspeed,ast2400-mac")))
		netdev->hw_features &= ~NETIF_F_HW_CSUM;
	if (np && FUNC20(np, "no-hw-checksum", NULL))
		netdev->hw_features &= ~(NETIF_F_HW_CSUM | NETIF_F_RXCSUM);
	netdev->features |= netdev->hw_features;

	/* register network device */
	err = FUNC27(netdev);
	if (err) {
		FUNC5(&pdev->dev, "Failed to register netdev\n");
		goto err_register_netdev;
	}

	FUNC16(netdev, "irq %d, mapped at %p\n", netdev->irq, priv->base);

	return 0;

err_ncsi_dev:
err_register_netdev:
	FUNC9(netdev);
err_setup_mdio:
	FUNC14(priv->base);
err_ioremap:
	FUNC28(priv->res);
err_req_mem:
	FUNC8(netdev);
err_alloc_etherdev:
	return err;
}