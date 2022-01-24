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
typedef  int u32 ;
struct xgmac_priv {int rx_pause; int tx_pause; int max_macs; int pmt_irq; scalar_t__ base; int /*<<< orphan*/  napi; int /*<<< orphan*/  wolopts; int /*<<< orphan*/ * device; struct net_device* dev; int /*<<< orphan*/  tx_timeout_work; int /*<<< orphan*/  stats_lock; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct net_device {int irq; int hw_features; int features; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  max_mtu; scalar_t__ min_mtu; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int DMA_HW_FEAT_TXCOESEL ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ ETH_ZLEN ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAKE_MAGIC ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ XGMAC_DMA_HW_FEATURE ; 
 scalar_t__ XGMAC_DMA_INTR_ENA ; 
 int /*<<< orphan*/  XGMAC_MAX_MTU ; 
 scalar_t__ XGMAC_VERSION ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*,int) ; 
 struct xgmac_priv* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 void* FUNC18 (struct platform_device*,int) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct net_device*) ; 
 int FUNC21 (scalar_t__) ; 
 int FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct resource*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int,scalar_t__) ; 
 int /*<<< orphan*/  xgmac_ethtool_ops ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xgmac_interrupt ; 
 int /*<<< orphan*/  xgmac_netdev_ops ; 
 int /*<<< orphan*/  xgmac_pmt_interrupt ; 
 int /*<<< orphan*/  xgmac_poll ; 
 int /*<<< orphan*/  xgmac_tx_timeout_work ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	int ret = 0;
	struct resource *res;
	struct net_device *ndev = NULL;
	struct xgmac_priv *priv = NULL;
	u32 uid;

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	if (!FUNC25(res->start, FUNC26(res), pdev->name))
		return -EBUSY;

	ndev = FUNC3(sizeof(struct xgmac_priv));
	if (!ndev) {
		ret = -ENOMEM;
		goto err_alloc;
	}

	FUNC1(ndev, &pdev->dev);
	priv = FUNC14(ndev);
	FUNC20(pdev, ndev);
	ndev->netdev_ops = &xgmac_netdev_ops;
	ndev->ethtool_ops = &xgmac_ethtool_ops;
	FUNC27(&priv->stats_lock);
	FUNC0(&priv->tx_timeout_work, xgmac_tx_timeout_work);

	priv->device = &pdev->dev;
	priv->dev = ndev;
	priv->rx_pause = 1;
	priv->tx_pause = 1;

	priv->base = FUNC9(res->start, FUNC26(res));
	if (!priv->base) {
		FUNC12(ndev, "ioremap failed\n");
		ret = -ENOMEM;
		goto err_io;
	}

	uid = FUNC21(priv->base + XGMAC_VERSION);
	FUNC13(ndev, "h/w version is 0x%x\n", uid);

	/* Figure out how many valid mac address filter registers we have */
	FUNC28(1, priv->base + FUNC2(31));
	if (FUNC21(priv->base + FUNC2(31)) == 1)
		priv->max_macs = 31;
	else
		priv->max_macs = 7;

	FUNC28(0, priv->base + XGMAC_DMA_INTR_ENA);
	ndev->irq = FUNC18(pdev, 0);
	if (ndev->irq == -ENXIO) {
		FUNC12(ndev, "No irq resource\n");
		ret = ndev->irq;
		goto err_irq;
	}

	ret = FUNC24(ndev->irq, xgmac_interrupt, 0,
			  FUNC4(&pdev->dev), ndev);
	if (ret < 0) {
		FUNC12(ndev, "Could not request irq %d - ret %d)\n",
			ndev->irq, ret);
		goto err_irq;
	}

	priv->pmt_irq = FUNC18(pdev, 1);
	if (priv->pmt_irq == -ENXIO) {
		FUNC12(ndev, "No pmt irq resource\n");
		ret = priv->pmt_irq;
		goto err_pmt_irq;
	}

	ret = FUNC24(priv->pmt_irq, xgmac_pmt_interrupt, 0,
			  FUNC4(&pdev->dev), ndev);
	if (ret < 0) {
		FUNC12(ndev, "Could not request irq %d - ret %d)\n",
			priv->pmt_irq, ret);
		goto err_pmt_irq;
	}

	FUNC6(&pdev->dev, 1);
	if (FUNC5(priv->device))
		priv->wolopts = WAKE_MAGIC;	/* Magic Frame as default */

	ndev->hw_features = NETIF_F_SG | NETIF_F_HIGHDMA;
	if (FUNC21(priv->base + XGMAC_DMA_HW_FEATURE) & DMA_HW_FEAT_TXCOESEL)
		ndev->hw_features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM |
				     NETIF_F_RXCSUM;
	ndev->features |= ndev->hw_features;
	ndev->priv_flags |= IFF_UNICAST_FLT;

	/* MTU range: 46 - 9000 */
	ndev->min_mtu = ETH_ZLEN - ETH_HLEN;
	ndev->max_mtu = XGMAC_MAX_MTU;

	/* Get the MAC address */
	FUNC29(priv->base, ndev->dev_addr, 0);
	if (!FUNC11(ndev->dev_addr))
		FUNC15(ndev, "MAC address %pM not valid",
			 ndev->dev_addr);

	FUNC16(ndev, &priv->napi, xgmac_poll, 64);
	ret = FUNC22(ndev);
	if (ret)
		goto err_reg;

	return 0;

err_reg:
	FUNC17(&priv->napi);
	FUNC7(priv->pmt_irq, ndev);
err_pmt_irq:
	FUNC7(ndev->irq, ndev);
err_irq:
	FUNC10(priv->base);
err_io:
	FUNC8(ndev);
err_alloc:
	FUNC23(res->start, FUNC26(res));
	return ret;
}