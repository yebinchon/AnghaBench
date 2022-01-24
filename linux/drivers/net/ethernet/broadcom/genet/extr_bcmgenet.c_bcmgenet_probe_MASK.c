#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct device_node* of_node; struct bcmgenet_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {int watchdog_timeo; int hw_features; int needed_headroom; int /*<<< orphan*/  name; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  dev_addr; } ;
struct device_node {int dummy; } ;
struct bcmgenet_priv {void const* base; int wol_irq_disabled; int version; void const* clk; void const* clk_wol; void const* clk_eee; TYPE_2__* rx_rings; TYPE_1__* hw_params; struct net_device* dev; struct platform_device* pdev; int /*<<< orphan*/  bcmgenet_irq_work; int /*<<< orphan*/  rx_buf_len; int /*<<< orphan*/  wq; void* wol_irq; int /*<<< orphan*/  msg_enable; int /*<<< orphan*/  lock; void* irq1; void* irq0; } ;
struct bcmgenet_platform_data {void* mac_address; int genet_version; } ;
typedef  enum bcmgenet_version { ____Placeholder_bcmgenet_version } bcmgenet_version ;
struct TYPE_11__ {int rx_max_coalesced_frames; } ;
struct TYPE_10__ {int rx_queues; scalar_t__ tx_queues; } ;

/* Variables and functions */
 size_t DESC_INDEX ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ GENET_MAX_MQ_CNT ; 
 int /*<<< orphan*/  GENET_MSG_DEFAULT ; 
 int /*<<< orphan*/  GENET_POWER_PASSIVE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int FUNC2 (void const*) ; 
 int /*<<< orphan*/  RX_BUF_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_3__*) ; 
 struct net_device* FUNC4 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  bcmgenet_ethtool_ops ; 
 int /*<<< orphan*/  bcmgenet_irq_task ; 
 int /*<<< orphan*/  bcmgenet_match ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  bcmgenet_netdev_ops ; 
 int /*<<< orphan*/  FUNC6 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  bcmgenet_wol_isr ; 
 int /*<<< orphan*/  FUNC8 (void const*) ; 
 int /*<<< orphan*/  FUNC9 (void const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 void* FUNC14 (TYPE_3__*,char*) ; 
 void const* FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_3__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 struct bcmgenet_priv* FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*,scalar_t__) ; 
 void* FUNC26 (struct device_node*) ; 
 struct of_device_id* FUNC27 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC28 (struct device_node*,char*,char const**) ; 
 void* FUNC29 (struct platform_device*,int) ; 
 int FUNC30 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (char const*,char*) ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	struct bcmgenet_platform_data *pd = pdev->dev.platform_data;
	struct device_node *dn = pdev->dev.of_node;
	const struct of_device_id *of_id = NULL;
	struct bcmgenet_priv *priv;
	struct net_device *dev;
	const void *macaddr;
	unsigned int i;
	int err = -EIO;
	const char *phy_mode_str;

	/* Up to GENET_MAX_MQ_CNT + 1 TX queues and RX queues */
	dev = FUNC4(sizeof(*priv), GENET_MAX_MQ_CNT + 1,
				 GENET_MAX_MQ_CNT + 1);
	if (!dev) {
		FUNC10(&pdev->dev, "can't allocate net device\n");
		return -ENOMEM;
	}

	if (dn) {
		of_id = FUNC27(bcmgenet_match, dn);
		if (!of_id)
			return -EINVAL;
	}

	priv = FUNC21(dev);
	priv->irq0 = FUNC29(pdev, 0);
	priv->irq1 = FUNC29(pdev, 1);
	priv->wol_irq = FUNC29(pdev, 2);
	if (!priv->irq0 || !priv->irq1) {
		FUNC10(&pdev->dev, "can't find IRQs\n");
		err = -EINVAL;
		goto err;
	}

	if (dn) {
		macaddr = FUNC26(dn);
		if (FUNC1(macaddr)) {
			FUNC10(&pdev->dev, "can't find MAC address\n");
			err = -EINVAL;
			goto err;
		}
	} else {
		macaddr = pd->mac_address;
	}

	priv->base = FUNC15(pdev, 0);
	if (FUNC1(priv->base)) {
		err = FUNC2(priv->base);
		goto err;
	}

	FUNC32(&priv->lock);

	FUNC3(dev, &pdev->dev);
	FUNC11(&pdev->dev, dev);
	FUNC17(dev->dev_addr, macaddr);
	dev->watchdog_timeo = 2 * HZ;
	dev->ethtool_ops = &bcmgenet_ethtool_ops;
	dev->netdev_ops = &bcmgenet_netdev_ops;

	priv->msg_enable = FUNC23(-1, GENET_MSG_DEFAULT);

	/* Set hardware features */
	dev->hw_features |= NETIF_F_SG | NETIF_F_IP_CSUM |
		NETIF_F_IPV6_CSUM | NETIF_F_RXCSUM;

	/* Request the WOL interrupt and advertise suspend if available */
	priv->wol_irq_disabled = true;
	err = FUNC16(&pdev->dev, priv->wol_irq, bcmgenet_wol_isr, 0,
			       dev->name, priv);
	if (!err)
		FUNC13(&pdev->dev, 1);

	/* Set the needed headroom to account for any possible
	 * features enabling/disabling at runtime
	 */
	dev->needed_headroom += 64;

	FUNC20(dev);

	priv->dev = dev;
	priv->pdev = pdev;
	if (of_id)
		priv->version = (enum bcmgenet_version)of_id->data;
	else
		priv->version = pd->genet_version;

	priv->clk = FUNC14(&priv->pdev->dev, "enet");
	if (FUNC1(priv->clk)) {
		FUNC12(&priv->pdev->dev, "failed to get enet clock\n");
		priv->clk = NULL;
	}

	FUNC9(priv->clk);

	FUNC7(priv);

	/* Mii wait queue */
	FUNC19(&priv->wq);
	/* Always use RX_BUF_LENGTH (2KB) buffer for all chips */
	priv->rx_buf_len = RX_BUF_LENGTH;
	FUNC0(&priv->bcmgenet_irq_work, bcmgenet_irq_task);

	priv->clk_wol = FUNC14(&priv->pdev->dev, "enet-wol");
	if (FUNC1(priv->clk_wol)) {
		FUNC12(&priv->pdev->dev, "failed to get enet-wol clock\n");
		priv->clk_wol = NULL;
	}

	priv->clk_eee = FUNC14(&priv->pdev->dev, "enet-eee");
	if (FUNC1(priv->clk_eee)) {
		FUNC12(&priv->pdev->dev, "failed to get enet-eee clock\n");
		priv->clk_eee = NULL;
	}

	/* If this is an internal GPHY, power it on now, before UniMAC is
	 * brought out of reset as absolutely no UniMAC activity is allowed
	 */
	if (dn && !FUNC28(dn, "phy-mode", &phy_mode_str) &&
	    !FUNC33(phy_mode_str, "internal"))
		FUNC6(priv, GENET_POWER_PASSIVE);

	FUNC31(priv);

	err = FUNC5(dev);
	if (err)
		goto err_clk_disable;

	/* setup number of real queues  + 1 (GENET_V1 has 0 hardware queues
	 * just the ring 16 descriptor based TX
	 */
	FUNC25(priv->dev, priv->hw_params->tx_queues + 1);
	FUNC24(priv->dev, priv->hw_params->rx_queues + 1);

	/* Set default coalescing parameters */
	for (i = 0; i < priv->hw_params->rx_queues; i++)
		priv->rx_rings[i].rx_max_coalesced_frames = 1;
	priv->rx_rings[DESC_INDEX].rx_max_coalesced_frames = 1;

	/* libphy will determine the link state */
	FUNC22(dev);

	/* Turn off the main clock, WOL clock is handled separately */
	FUNC8(priv->clk);

	err = FUNC30(dev);
	if (err)
		goto err;

	return err;

err_clk_disable:
	FUNC8(priv->clk);
err:
	FUNC18(dev);
	return err;
}