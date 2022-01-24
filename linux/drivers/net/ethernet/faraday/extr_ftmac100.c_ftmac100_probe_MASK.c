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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/ * ethtool_ops; } ;
struct TYPE_2__ {int phy_id_mask; int reg_num_mask; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; scalar_t__ phy_id; } ;
struct ftmac100 {int irq; int /*<<< orphan*/  napi; int /*<<< orphan*/  res; int /*<<< orphan*/  base; TYPE_1__ mii; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/ * dev; struct net_device* netdev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  ftmac100_ethtool_ops ; 
 int /*<<< orphan*/  ftmac100_mdio_read ; 
 int /*<<< orphan*/  ftmac100_mdio_write ; 
 int /*<<< orphan*/  ftmac100_netdev_ops ; 
 int /*<<< orphan*/  ftmac100_poll ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*,int,...) ; 
 struct ftmac100* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct net_device*) ; 
 int FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct resource*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct resource *res;
	int irq;
	struct net_device *netdev;
	struct ftmac100 *priv;
	int err;

	if (!pdev)
		return -ENODEV;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENXIO;

	irq = FUNC13(pdev, 0);
	if (irq < 0)
		return irq;

	/* setup net_device */
	netdev = FUNC1(sizeof(*priv));
	if (!netdev) {
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	FUNC0(netdev, &pdev->dev);
	netdev->ethtool_ops = &ftmac100_ethtool_ops;
	netdev->netdev_ops = &ftmac100_netdev_ops;

	FUNC15(pdev, netdev);

	/* setup private data */
	priv = FUNC10(netdev);
	priv->netdev = netdev;
	priv->dev = &pdev->dev;

	FUNC20(&priv->tx_lock);

	/* initialize NAPI */
	FUNC11(netdev, &priv->napi, ftmac100_poll, 64);

	/* map io memory */
	priv->res = FUNC18(res->start, FUNC19(res),
				       FUNC3(&pdev->dev));
	if (!priv->res) {
		FUNC2(&pdev->dev, "Could not reserve memory region\n");
		err = -ENOMEM;
		goto err_req_mem;
	}

	priv->base = FUNC6(res->start, FUNC19(res));
	if (!priv->base) {
		FUNC2(&pdev->dev, "Failed to ioremap ethernet registers\n");
		err = -EIO;
		goto err_ioremap;
	}

	priv->irq = irq;

	/* initialize struct mii_if_info */
	priv->mii.phy_id	= 0;
	priv->mii.phy_id_mask	= 0x1f;
	priv->mii.reg_num_mask	= 0x1f;
	priv->mii.dev		= netdev;
	priv->mii.mdio_read	= ftmac100_mdio_read;
	priv->mii.mdio_write	= ftmac100_mdio_write;

	/* register network device */
	err = FUNC16(netdev);
	if (err) {
		FUNC2(&pdev->dev, "Failed to register netdev\n");
		goto err_register_netdev;
	}

	FUNC9(netdev, "irq %d, mapped at %p\n", priv->irq, priv->base);

	if (!FUNC8(netdev->dev_addr)) {
		FUNC4(netdev);
		FUNC9(netdev, "generated random MAC address %pM\n",
			    netdev->dev_addr);
	}

	return 0;

err_register_netdev:
	FUNC7(priv->base);
err_ioremap:
	FUNC17(priv->res);
err_req_mem:
	FUNC12(&priv->napi);
	FUNC5(netdev);
err_alloc_etherdev:
	return err;
}