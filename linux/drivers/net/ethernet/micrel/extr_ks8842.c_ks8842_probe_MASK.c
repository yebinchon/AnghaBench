#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct resource {int flags; int /*<<< orphan*/  start; } ;
struct TYPE_7__ {struct TYPE_7__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct net_device {unsigned int addr_len; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct ks8842_platform_data {int tx_dma_channel; int rx_dma_channel; scalar_t__* macaddr; } ;
struct TYPE_6__ {int channel; } ;
struct TYPE_5__ {int channel; } ;
struct ks8842_adapter {int conf_flags; int irq; int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  lock; int /*<<< orphan*/  tasklet; TYPE_2__ dma_tx; TYPE_1__ dma_rx; TYPE_3__* dev; int /*<<< orphan*/  timeout_work; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int MICREL_KS884X ; 
 int /*<<< orphan*/  REG_SW_ID_AND_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_3__*) ; 
 struct net_device* FUNC2 (int) ; 
 struct ks8842_platform_data* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ks8842_ethtool_ops ; 
 int /*<<< orphan*/  ks8842_netdev_ops ; 
 int FUNC9 (struct ks8842_adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ks8842_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ks8842_tasklet ; 
 int /*<<< orphan*/  ks8842_tx_timeout_work ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__*,unsigned int) ; 
 struct ks8842_adapter* FUNC12 (struct net_device*) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int,int) ; 
 int FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct resource*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	int err = -ENOMEM;
	struct resource *iomem;
	struct net_device *netdev;
	struct ks8842_adapter *adapter;
	struct ks8842_platform_data *pdata = FUNC3(&pdev->dev);
	u16 id;
	unsigned i;

	iomem = FUNC14(pdev, IORESOURCE_MEM, 0);
	if (!FUNC19(iomem->start, FUNC20(iomem), DRV_NAME))
		goto err_mem_region;

	netdev = FUNC2(sizeof(struct ks8842_adapter));
	if (!netdev)
		goto err_alloc_etherdev;

	FUNC1(netdev, &pdev->dev);

	adapter = FUNC12(netdev);
	adapter->netdev = netdev;
	FUNC0(&adapter->timeout_work, ks8842_tx_timeout_work);
	adapter->hw_addr = FUNC6(iomem->start, FUNC20(iomem));
	adapter->conf_flags = iomem->flags;

	if (!adapter->hw_addr)
		goto err_ioremap;

	adapter->irq = FUNC13(pdev, 0);
	if (adapter->irq < 0) {
		err = adapter->irq;
		goto err_get_irq;
	}

	adapter->dev = (pdev->dev.parent) ? pdev->dev.parent : &pdev->dev;

	/* DMA is only supported when accessed via timberdale */
	if (!(adapter->conf_flags & MICREL_KS884X) && pdata &&
		(pdata->tx_dma_channel != -1) &&
		(pdata->rx_dma_channel != -1)) {
		adapter->dma_rx.channel = pdata->rx_dma_channel;
		adapter->dma_tx.channel = pdata->tx_dma_channel;
	} else {
		adapter->dma_rx.channel = -1;
		adapter->dma_tx.channel = -1;
	}

	FUNC23(&adapter->tasklet, ks8842_tasklet, (unsigned long)netdev);
	FUNC21(&adapter->lock);

	netdev->netdev_ops = &ks8842_netdev_ops;
	netdev->ethtool_ops = &ks8842_ethtool_ops;

	/* Check if a mac address was given */
	i = netdev->addr_len;
	if (pdata) {
		for (i = 0; i < netdev->addr_len; i++)
			if (pdata->macaddr[i] != 0)
				break;

		if (i < netdev->addr_len)
			/* an address was passed, use it */
			FUNC11(netdev->dev_addr, pdata->macaddr,
				netdev->addr_len);
	}

	if (i == netdev->addr_len) {
		FUNC10(adapter, netdev->dev_addr);

		if (!FUNC8(netdev->dev_addr))
			FUNC4(netdev);
	}

	id = FUNC9(adapter, 32, REG_SW_ID_AND_ENABLE);

	FUNC22(netdev->name, "eth%d");
	err = FUNC17(netdev);
	if (err)
		goto err_register;

	FUNC15(pdev, netdev);

	FUNC16("Found chip, family: 0x%x, id: 0x%x, rev: 0x%x\n",
		(id >> 8) & 0xff, (id >> 4) & 0xf, (id >> 1) & 0x7);

	return 0;

err_register:
err_get_irq:
	FUNC7(adapter->hw_addr);
err_ioremap:
	FUNC5(netdev);
err_alloc_etherdev:
	FUNC18(iomem->start, FUNC20(iomem));
err_mem_region:
	return err;
}