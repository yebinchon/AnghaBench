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
struct device {struct device_node* of_node; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {scalar_t__ irq; int watchdog_timeo; int hw_features; int features; int vlan_features; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  dev_addr; } ;
struct mii_bus {char* name; int /*<<< orphan*/  id; struct device* parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct hix5hd2_priv* priv; } ;
struct hix5hd2_priv {unsigned long hw_cap; char const* base; char const* ctrl_base; char const* mac_core_clk; char const* mac_ifc_clk; char const* mac_core_rst; char const* mac_ifc_rst; char const* phy_rst; int /*<<< orphan*/  phy_node; int /*<<< orphan*/  napi; struct net_device* netdev; int /*<<< orphan*/  tx_timeout_task; scalar_t__ phy_mode; struct mii_bus* bus; int /*<<< orphan*/  phy_reset_delays; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELAYS_NUM ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int HZ ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  PHY_RESET_DELAYS_PROPERTY ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct device*) ; 
 struct net_device* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int FUNC7 (char const*) ; 
 char* FUNC8 (struct device*) ; 
 void* FUNC9 (struct device*,char*) ; 
 void* FUNC10 (struct platform_device*,int) ; 
 int FUNC11 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 void* FUNC12 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  hix5hd2_ethtools_ops ; 
 int FUNC18 (struct hix5hd2_priv*) ; 
 int FUNC19 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  hix5hd2_interrupt ; 
 int /*<<< orphan*/  FUNC20 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  hix5hd2_mdio_read ; 
 int /*<<< orphan*/  hix5hd2_mdio_write ; 
 int /*<<< orphan*/  hix5hd2_netdev_ops ; 
 int /*<<< orphan*/  hix5hd2_of_match ; 
 int /*<<< orphan*/  FUNC21 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  hix5hd2_poll ; 
 int /*<<< orphan*/  hix5hd2_tx_timeout_task ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct mii_bus* FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC25 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*,char*,...) ; 
 struct hix5hd2_priv* FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 char* FUNC31 (struct device_node*) ; 
 scalar_t__ FUNC32 (struct device_node*) ; 
 struct of_device_id* FUNC33 (int /*<<< orphan*/ ,struct device*) ; 
 int FUNC34 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC37 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC38 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct platform_device*,struct net_device*) ; 
 int FUNC40 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC42(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	const struct of_device_id *of_id = NULL;
	struct net_device *ndev;
	struct hix5hd2_priv *priv;
	struct mii_bus *bus;
	const char *mac_addr;
	int ret;

	ndev = FUNC5(sizeof(struct hix5hd2_priv));
	if (!ndev)
		return -ENOMEM;

	FUNC39(pdev, ndev);

	priv = FUNC27(ndev);
	priv->dev = dev;
	priv->netdev = ndev;

	of_id = FUNC33(hix5hd2_of_match, dev);
	if (!of_id) {
		ret = -EINVAL;
		goto out_free_netdev;
	}
	priv->hw_cap = (unsigned long)of_id->data;

	priv->base = FUNC10(pdev, 0);
	if (FUNC2(priv->base)) {
		ret = FUNC3(priv->base);
		goto out_free_netdev;
	}

	priv->ctrl_base = FUNC10(pdev, 1);
	if (FUNC2(priv->ctrl_base)) {
		ret = FUNC3(priv->ctrl_base);
		goto out_free_netdev;
	}

	priv->mac_core_clk = FUNC9(&pdev->dev, "mac_core");
	if (FUNC2(priv->mac_core_clk)) {
		FUNC26(ndev, "failed to get mac core clk\n");
		ret = -ENODEV;
		goto out_free_netdev;
	}

	ret = FUNC7(priv->mac_core_clk);
	if (ret < 0) {
		FUNC26(ndev, "failed to enable mac core clk %d\n", ret);
		goto out_free_netdev;
	}

	priv->mac_ifc_clk = FUNC9(&pdev->dev, "mac_ifc");
	if (FUNC2(priv->mac_ifc_clk))
		priv->mac_ifc_clk = NULL;

	ret = FUNC7(priv->mac_ifc_clk);
	if (ret < 0) {
		FUNC26(ndev, "failed to enable mac ifc clk %d\n", ret);
		goto out_disable_mac_core_clk;
	}

	priv->mac_core_rst = FUNC12(dev, "mac_core");
	if (FUNC2(priv->mac_core_rst))
		priv->mac_core_rst = NULL;
	FUNC20(priv);

	priv->mac_ifc_rst = FUNC12(dev, "mac_ifc");
	if (FUNC2(priv->mac_ifc_rst))
		priv->mac_ifc_rst = NULL;

	priv->phy_rst = FUNC12(dev, "phy");
	if (FUNC2(priv->phy_rst)) {
		priv->phy_rst = NULL;
	} else {
		ret = FUNC37(node,
						 PHY_RESET_DELAYS_PROPERTY,
						 priv->phy_reset_delays,
						 DELAYS_NUM);
		if (ret)
			goto out_disable_clk;
		FUNC21(priv);
	}

	bus = FUNC23();
	if (bus == NULL) {
		ret = -ENOMEM;
		goto out_disable_clk;
	}

	bus->priv = priv;
	bus->name = "hix5hd2_mii_bus";
	bus->read = hix5hd2_mdio_read;
	bus->write = hix5hd2_mdio_write;
	bus->parent = &pdev->dev;
	FUNC41(bus->id, MII_BUS_ID_SIZE, "%s-mii", FUNC8(&pdev->dev));
	priv->bus = bus;

	ret = FUNC34(bus, node);
	if (ret)
		goto err_free_mdio;

	priv->phy_mode = FUNC32(node);
	if ((int)priv->phy_mode < 0) {
		FUNC26(ndev, "not find phy-mode\n");
		ret = -EINVAL;
		goto err_mdiobus;
	}

	priv->phy_node = FUNC36(node, "phy-handle", 0);
	if (!priv->phy_node) {
		FUNC26(ndev, "not find phy-handle\n");
		ret = -EINVAL;
		goto err_mdiobus;
	}

	ndev->irq = FUNC38(pdev, 0);
	if (ndev->irq <= 0) {
		FUNC26(ndev, "No irq resource\n");
		ret = -EINVAL;
		goto out_phy_node;
	}

	ret = FUNC11(dev, ndev->irq, hix5hd2_interrupt,
			       0, pdev->name, ndev);
	if (ret) {
		FUNC26(ndev, "devm_request_irq failed\n");
		goto out_phy_node;
	}

	mac_addr = FUNC31(node);
	if (!FUNC2(mac_addr))
		FUNC14(ndev->dev_addr, mac_addr);
	if (!FUNC22(ndev->dev_addr)) {
		FUNC13(ndev);
		FUNC28(ndev, "using random MAC address %pM\n",
			    ndev->dev_addr);
	}

	FUNC1(&priv->tx_timeout_task, hix5hd2_tx_timeout_task);
	ndev->watchdog_timeo = 6 * HZ;
	ndev->priv_flags |= IFF_UNICAST_FLT;
	ndev->netdev_ops = &hix5hd2_netdev_ops;
	ndev->ethtool_ops = &hix5hd2_ethtools_ops;
	FUNC4(ndev, dev);

	if (FUNC0(priv->hw_cap))
		ndev->hw_features |= NETIF_F_SG;

	ndev->features |= ndev->hw_features | NETIF_F_HIGHDMA;
	ndev->vlan_features |= ndev->features;

	ret = FUNC18(priv);
	if (ret)
		goto out_phy_node;

	FUNC29(ndev, &priv->napi, hix5hd2_poll, NAPI_POLL_WEIGHT);

	if (FUNC0(priv->hw_cap)) {
		ret = FUNC19(priv);
		if (ret)
			goto out_destroy_queue;
	}

	ret = FUNC40(priv->netdev);
	if (ret) {
		FUNC26(ndev, "register_netdev failed!");
		goto out_destroy_queue;
	}

	FUNC6(priv->mac_ifc_clk);
	FUNC6(priv->mac_core_clk);

	return ret;

out_destroy_queue:
	if (FUNC0(priv->hw_cap))
		FUNC17(priv);
	FUNC30(&priv->napi);
	FUNC16(priv);
out_phy_node:
	FUNC35(priv->phy_node);
err_mdiobus:
	FUNC25(bus);
err_free_mdio:
	FUNC24(bus);
out_disable_clk:
	FUNC6(priv->mac_ifc_clk);
out_disable_mac_core_clk:
	FUNC6(priv->mac_core_clk);
out_free_netdev:
	FUNC15(ndev);

	return ret;
}