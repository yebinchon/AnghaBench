#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nixge_priv {scalar_t__ tx_irq; scalar_t__ rx_irq; scalar_t__ mii_bus; struct net_device* ndev; struct device_node* phy_node; scalar_t__ phy_mode; int /*<<< orphan*/  coalesce_count_tx; int /*<<< orphan*/  coalesce_count_rx; int /*<<< orphan*/  napi; TYPE_1__* dev; } ;
struct net_device {int min_mtu; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  features; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int /*<<< orphan*/  NETIF_F_SG ; 
 int /*<<< orphan*/  NIXGE_JUMBO_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  XAXIDMA_DFT_RX_THRESHOLD ; 
 int /*<<< orphan*/  XAXIDMA_DFT_TX_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,...) ; 
 struct nixge_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nixge_ethtool_ops ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*) ; 
 int FUNC13 (struct nixge_priv*,struct device_node*) ; 
 int /*<<< orphan*/  nixge_netdev_ops ; 
 int FUNC14 (struct platform_device*) ; 
 int /*<<< orphan*/  nixge_poll ; 
 struct device_node* FUNC15 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*) ; 
 struct device_node* FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 void* FUNC23 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct net_device*) ; 
 int FUNC25 (struct net_device*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct device_node *mn, *phy_node;
	struct nixge_priv *priv;
	struct net_device *ndev;
	const u8 *mac_addr;
	int err;

	ndev = FUNC2(sizeof(*priv));
	if (!ndev)
		return -ENOMEM;

	FUNC24(pdev, ndev);
	FUNC0(ndev, &pdev->dev);

	ndev->features = NETIF_F_SG;
	ndev->netdev_ops = &nixge_netdev_ops;
	ndev->ethtool_ops = &nixge_ethtool_ops;

	/* MTU range: 64 - 9000 */
	ndev->min_mtu = 64;
	ndev->max_mtu = NIXGE_JUMBO_MTU;

	mac_addr = FUNC12(&pdev->dev);
	if (mac_addr && FUNC6(mac_addr)) {
		FUNC4(ndev->dev_addr, mac_addr);
		FUNC7(mac_addr);
	} else {
		FUNC3(ndev);
	}

	priv = FUNC10(ndev);
	priv->ndev = ndev;
	priv->dev = &pdev->dev;

	FUNC11(ndev, &priv->napi, nixge_poll, NAPI_POLL_WEIGHT);
	err = FUNC14(pdev);
	if (err)
		return err;
	FUNC1(ndev);

	priv->tx_irq = FUNC23(pdev, "tx");
	if (priv->tx_irq < 0) {
		FUNC9(ndev, "could not find 'tx' irq");
		return priv->tx_irq;
	}

	priv->rx_irq = FUNC23(pdev, "rx");
	if (priv->rx_irq < 0) {
		FUNC9(ndev, "could not find 'rx' irq");
		return priv->rx_irq;
	}

	priv->coalesce_count_rx = XAXIDMA_DFT_RX_THRESHOLD;
	priv->coalesce_count_tx = XAXIDMA_DFT_TX_THRESHOLD;

	mn = FUNC15(pdev->dev.of_node, "mdio");
	if (mn) {
		err = FUNC13(priv, mn);
		FUNC18(mn);
		if (err) {
			FUNC9(ndev, "error registering mdio bus");
			goto free_netdev;
		}
	}

	priv->phy_mode = FUNC16(pdev->dev.of_node);
	if ((int)priv->phy_mode < 0) {
		FUNC9(ndev, "not find \"phy-mode\" property\n");
		err = -EINVAL;
		goto unregister_mdio;
	}

	phy_node = FUNC19(pdev->dev.of_node, "phy-handle", 0);
	if (!phy_node && FUNC21(pdev->dev.of_node)) {
		err = FUNC22(pdev->dev.of_node);
		if (err < 0) {
			FUNC9(ndev, "broken fixed-link specification\n");
			goto unregister_mdio;
		}
		phy_node = FUNC17(pdev->dev.of_node);
	}
	priv->phy_node = phy_node;

	err = FUNC25(priv->ndev);
	if (err) {
		FUNC9(ndev, "register_netdev() error (%i)\n", err);
		goto free_phy;
	}

	return 0;

free_phy:
	if (FUNC21(pdev->dev.of_node))
		FUNC20(pdev->dev.of_node);
	FUNC18(phy_node);

unregister_mdio:
	if (priv->mii_bus)
		FUNC8(priv->mii_bus);

free_netdev:
	FUNC5(ndev);

	return err;
}