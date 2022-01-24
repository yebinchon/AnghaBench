#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {scalar_t__ irq; } ;
struct TYPE_8__ {int /*<<< orphan*/  napi; TYPE_2__ dma; } ;
struct TYPE_5__ {scalar_t__ irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  napi; TYPE_1__ dma; } ;
struct xrx200_priv {int /*<<< orphan*/  const* clk; TYPE_4__ chan_tx; TYPE_3__ chan_rx; int /*<<< orphan*/  const* pmac_reg; struct device* dev; struct net_device* net_dev; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; int /*<<< orphan*/ * netdev_ops; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ZLEN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  PMAC_HD_CTL ; 
 int PMAC_HD_CTL_AC ; 
 int PMAC_HD_CTL_AS ; 
 int PMAC_HD_CTL_AST ; 
 int PMAC_HD_CTL_RC ; 
 int PMAC_HD_CTL_RST ; 
 int PMAC_HD_CTL_RXSH ; 
 int /*<<< orphan*/  PMAC_RX_IPG ; 
 int /*<<< orphan*/  PMAC_RX_IPG_MASK ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct device*) ; 
 int /*<<< orphan*/  XRX200_DMA_DATA_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct net_device* FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  const* FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC8 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct xrx200_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC13 (struct device_node*) ; 
 void* FUNC14 (struct platform_device*,char*) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct xrx200_priv*) ; 
 int FUNC17 (struct net_device*) ; 
 int FUNC18 (struct xrx200_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct xrx200_priv*) ; 
 int /*<<< orphan*/  xrx200_netdev_ops ; 
 int /*<<< orphan*/  FUNC20 (struct xrx200_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xrx200_poll_rx ; 
 int /*<<< orphan*/  xrx200_tx_housekeeping ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct resource *res;
	struct xrx200_priv *priv;
	struct net_device *net_dev;
	const u8 *mac;
	int err;

	/* alloc the network device */
	net_dev = FUNC6(dev, sizeof(struct xrx200_priv));
	if (!net_dev)
		return -ENOMEM;

	priv = FUNC11(net_dev);
	priv->net_dev = net_dev;
	priv->dev = dev;

	net_dev->netdev_ops = &xrx200_netdev_ops;
	FUNC2(net_dev, dev);
	net_dev->min_mtu = ETH_ZLEN;
	net_dev->max_mtu = XRX200_DMA_DATA_LEN;

	/* load the memory ranges */
	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC5(dev, "failed to get resources\n");
		return -ENOENT;
	}

	priv->pmac_reg = FUNC8(dev, res);
	if (FUNC0(priv->pmac_reg)) {
		FUNC5(dev, "failed to request and remap io ranges\n");
		return FUNC1(priv->pmac_reg);
	}

	priv->chan_rx.dma.irq = FUNC14(pdev, "rx");
	if (priv->chan_rx.dma.irq < 0)
		return -ENOENT;
	priv->chan_tx.dma.irq = FUNC14(pdev, "tx");
	if (priv->chan_tx.dma.irq < 0)
		return -ENOENT;

	/* get the clock */
	priv->clk = FUNC7(dev, NULL);
	if (FUNC0(priv->clk)) {
		FUNC5(dev, "failed to get clock\n");
		return FUNC1(priv->clk);
	}

	mac = FUNC13(np);
	if (!FUNC0(mac))
		FUNC10(net_dev->dev_addr, mac);
	else
		FUNC9(net_dev);

	/* bring up the dma engine and IP core */
	err = FUNC18(priv);
	if (err)
		return err;

	/* enable clock gate */
	err = FUNC4(priv->clk);
	if (err)
		goto err_uninit_dma;

	/* set IPG to 12 */
	FUNC20(priv, PMAC_RX_IPG_MASK, 0xb, PMAC_RX_IPG);

	/* enable status header, enable CRC */
	FUNC20(priv, 0,
			 PMAC_HD_CTL_RST | PMAC_HD_CTL_AST | PMAC_HD_CTL_RXSH |
			 PMAC_HD_CTL_AS | PMAC_HD_CTL_AC | PMAC_HD_CTL_RC,
			 PMAC_HD_CTL);

	/* setup NAPI */
	FUNC12(net_dev, &priv->chan_rx.napi, xrx200_poll_rx, 32);
	FUNC12(net_dev, &priv->chan_tx.napi, xrx200_tx_housekeeping, 32);

	FUNC16(pdev, priv);

	err = FUNC17(net_dev);
	if (err)
		goto err_unprepare_clk;

	return 0;

err_unprepare_clk:
	FUNC3(priv->clk);

err_uninit_dma:
	FUNC19(priv);

	return err;
}