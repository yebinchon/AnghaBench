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
struct phy_device {int /*<<< orphan*/  interface; scalar_t__ phy_id; } ;
struct net_device {int watchdog_timeo; int /*<<< orphan*/  irq; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  dev_addr; } ;
struct hisi_femac_priv {char const* port_base; char const* glb_base; char const* clk; char const* mac_rst; char const* phy_rst; int /*<<< orphan*/  napi; int /*<<< orphan*/  phy_reset_delays; struct net_device* ndev; struct device* dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELAYS_NUM ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FEMAC_POLL_WEIGHT ; 
 int HZ ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  PHY_RESET_DELAYS_PROPERTY ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct device*) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int /*<<< orphan*/ ) ; 
 char const* FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct platform_device*,int) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 void* FUNC11 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  hisi_femac_adjust_link ; 
 int /*<<< orphan*/  FUNC15 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  hisi_femac_ethtools_ops ; 
 int FUNC16 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  hisi_femac_interrupt ; 
 int /*<<< orphan*/  hisi_femac_netdev_ops ; 
 int /*<<< orphan*/  FUNC17 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  hisi_femac_poll ; 
 int /*<<< orphan*/  FUNC18 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct hisi_femac_priv* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 char* FUNC23 (struct device_node*) ; 
 struct phy_device* FUNC24 (struct net_device*,struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct phy_device*,char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct platform_device*,struct net_device*) ; 
 int FUNC31 (struct net_device*) ; 

__attribute__((used)) static int FUNC32(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct net_device *ndev;
	struct hisi_femac_priv *priv;
	struct phy_device *phy;
	const char *mac_addr;
	int ret;

	ndev = FUNC3(sizeof(*priv));
	if (!ndev)
		return -ENOMEM;

	FUNC30(pdev, ndev);
	FUNC2(ndev, &pdev->dev);

	priv = FUNC20(ndev);
	priv->dev = dev;
	priv->ndev = ndev;

	priv->port_base = FUNC9(pdev, 0);
	if (FUNC0(priv->port_base)) {
		ret = FUNC1(priv->port_base);
		goto out_free_netdev;
	}

	priv->glb_base = FUNC9(pdev, 1);
	if (FUNC0(priv->glb_base)) {
		ret = FUNC1(priv->glb_base);
		goto out_free_netdev;
	}

	priv->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(priv->clk)) {
		FUNC6(dev, "failed to get clk\n");
		ret = -ENODEV;
		goto out_free_netdev;
	}

	ret = FUNC5(priv->clk);
	if (ret) {
		FUNC6(dev, "failed to enable clk %d\n", ret);
		goto out_free_netdev;
	}

	priv->mac_rst = FUNC11(dev, "mac");
	if (FUNC0(priv->mac_rst)) {
		ret = FUNC1(priv->mac_rst);
		goto out_disable_clk;
	}
	FUNC15(priv);

	priv->phy_rst = FUNC11(dev, "phy");
	if (FUNC0(priv->phy_rst)) {
		priv->phy_rst = NULL;
	} else {
		ret = FUNC25(node,
						 PHY_RESET_DELAYS_PROPERTY,
						 priv->phy_reset_delays,
						 DELAYS_NUM);
		if (ret)
			goto out_disable_clk;
		FUNC17(priv);
	}

	phy = FUNC24(ndev, node, hisi_femac_adjust_link);
	if (!phy) {
		FUNC6(dev, "connect to PHY failed!\n");
		ret = -ENODEV;
		goto out_disable_clk;
	}

	FUNC26(phy, "phy_id=0x%.8lx, phy_mode=%s\n",
			   (unsigned long)phy->phy_id,
			   FUNC28(phy->interface));

	mac_addr = FUNC23(node);
	if (!FUNC0(mac_addr))
		FUNC13(ndev->dev_addr, mac_addr);
	if (!FUNC19(ndev->dev_addr)) {
		FUNC12(ndev);
		FUNC7(dev, "using random MAC address %pM\n",
			 ndev->dev_addr);
	}

	ndev->watchdog_timeo = 6 * HZ;
	ndev->priv_flags |= IFF_UNICAST_FLT;
	ndev->netdev_ops = &hisi_femac_netdev_ops;
	ndev->ethtool_ops = &hisi_femac_ethtools_ops;
	FUNC21(ndev, &priv->napi, hisi_femac_poll, FEMAC_POLL_WEIGHT);

	FUNC18(priv);

	ret = FUNC16(priv);
	if (ret)
		goto out_disconnect_phy;

	ndev->irq = FUNC29(pdev, 0);
	if (ndev->irq <= 0) {
		ret = -ENODEV;
		goto out_disconnect_phy;
	}

	ret = FUNC10(dev, ndev->irq, hisi_femac_interrupt,
			       IRQF_SHARED, pdev->name, ndev);
	if (ret) {
		FUNC6(dev, "devm_request_irq %d failed!\n", ndev->irq);
		goto out_disconnect_phy;
	}

	ret = FUNC31(ndev);
	if (ret) {
		FUNC6(dev, "register_netdev failed!\n");
		goto out_disconnect_phy;
	}

	return ret;

out_disconnect_phy:
	FUNC22(&priv->napi);
	FUNC27(phy);
out_disable_clk:
	FUNC4(priv->clk);
out_free_netdev:
	FUNC14(ndev);

	return ret;
}