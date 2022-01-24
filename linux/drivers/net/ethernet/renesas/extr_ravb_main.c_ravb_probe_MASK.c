#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {scalar_t__ start; } ;
struct ravb_private {int emac_irq; int* rx_irqs; int* tx_irqs; int chip_id; int desc_bat_size; int /*<<< orphan*/  desc_bat_dma; TYPE_7__* desc_bat; int /*<<< orphan*/ * napi; int /*<<< orphan*/  msg_enable; int /*<<< orphan*/  ts_skb_list; int /*<<< orphan*/  num_tx_desc; int /*<<< orphan*/  clk; void* avb_link_active_low; void* no_avb_link; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  addr; int /*<<< orphan*/ * num_rx_ring; int /*<<< orphan*/ * num_tx_ring; struct platform_device* pdev; struct net_device* ndev; } ;
struct ravb_desc {int dummy; } ;
struct TYPE_16__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  parent; } ;
struct net_device {int irq; TYPE_1__ dev; int /*<<< orphan*/  dev_addr; scalar_t__ base_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  min_mtu; scalar_t__ max_mtu; void* hw_features; void* features; } ;
struct device_node {int dummy; } ;
typedef  enum ravb_chip_id { ____Placeholder_ravb_chip_id } ravb_chip_id ;
struct TYPE_17__ {int /*<<< orphan*/  die_dt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_RX_RING_SIZE ; 
 int /*<<< orphan*/  BE_TX_RING_SIZE ; 
 int /*<<< orphan*/  DBAT ; 
 int DBAT_ENTRY_NUM ; 
 int /*<<< orphan*/  DT_EOS ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  ETH_MIN_MTU ; 
 int /*<<< orphan*/  GCCR ; 
 int /*<<< orphan*/  GCCR_LTI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NC_RX_RING_SIZE ; 
 int /*<<< orphan*/  NC_TX_RING_SIZE ; 
 void* NETIF_F_RXCSUM ; 
 int NUM_RX_QUEUE ; 
 int /*<<< orphan*/  NUM_TX_DESC_GEN2 ; 
 int /*<<< orphan*/  NUM_TX_DESC_GEN3 ; 
 int NUM_TX_QUEUE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 size_t RAVB_BE ; 
 int /*<<< orphan*/  RAVB_DEF_MSG_ENABLE ; 
 size_t RAVB_NC ; 
 int RCAR_GEN2 ; 
 int RCAR_GEN3 ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_2__*) ; 
 scalar_t__ VLAN_HLEN ; 
 struct net_device* FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct resource*) ; 
 TYPE_7__* FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ravb_private* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC22 (struct device_node*) ; 
 void* FUNC23 (struct device_node*,char*) ; 
 int FUNC24 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct platform_device*,char*) ; 
 struct resource* FUNC26 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  ravb_ethtool_ops ; 
 int FUNC32 (struct ravb_private*) ; 
 int /*<<< orphan*/  FUNC33 (struct ravb_private*) ; 
 int /*<<< orphan*/  FUNC34 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ravb_netdev_ops ; 
 int /*<<< orphan*/  ravb_poll ; 
 int /*<<< orphan*/  FUNC35 (struct net_device*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC36 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC37 (struct net_device*,int /*<<< orphan*/ ) ; 
 char** ravb_rx_irqs ; 
 int /*<<< orphan*/  FUNC38 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC39 (struct net_device*) ; 
 int FUNC40 (struct net_device*) ; 
 char** ravb_tx_irqs ; 
 int /*<<< orphan*/  ravb_tx_timeout_work ; 
 int /*<<< orphan*/  FUNC41 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC42 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC44(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct ravb_private *priv;
	enum ravb_chip_id chip_id;
	struct net_device *ndev;
	int error, irq, q;
	struct resource *res;
	int i;

	if (!np) {
		FUNC6(&pdev->dev,
			"this driver is required to be instantiated from device tree\n");
		return -EINVAL;
	}

	/* Get base address */
	res = FUNC26(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC6(&pdev->dev, "invalid resource\n");
		return -EINVAL;
	}

	ndev = FUNC5(sizeof(struct ravb_private),
				  NUM_TX_QUEUE, NUM_RX_QUEUE);
	if (!ndev)
		return -ENOMEM;

	ndev->features = NETIF_F_RXCSUM;
	ndev->hw_features = NETIF_F_RXCSUM;

	FUNC29(&pdev->dev);
	FUNC30(&pdev->dev);

	/* The Ether-specific entries in the device structure. */
	ndev->base_addr = res->start;

	chip_id = (enum ravb_chip_id)FUNC20(&pdev->dev);

	if (chip_id == RCAR_GEN3)
		irq = FUNC25(pdev, "ch22");
	else
		irq = FUNC24(pdev, 0);
	if (irq < 0) {
		error = irq;
		goto out_release;
	}
	ndev->irq = irq;

	FUNC4(ndev, &pdev->dev);

	priv = FUNC17(ndev);
	priv->ndev = ndev;
	priv->pdev = pdev;
	priv->num_tx_ring[RAVB_BE] = BE_TX_RING_SIZE;
	priv->num_rx_ring[RAVB_BE] = BE_RX_RING_SIZE;
	priv->num_tx_ring[RAVB_NC] = NC_TX_RING_SIZE;
	priv->num_rx_ring[RAVB_NC] = NC_RX_RING_SIZE;
	priv->addr = FUNC10(&pdev->dev, res);
	if (FUNC2(priv->addr)) {
		error = FUNC3(priv->addr);
		goto out_release;
	}

	FUNC43(&priv->lock);
	FUNC1(&priv->work, ravb_tx_timeout_work);

	priv->phy_interface = FUNC22(np);

	priv->no_avb_link = FUNC23(np, "renesas,no-ether-link");
	priv->avb_link_active_low =
		FUNC23(np, "renesas,ether-link-active-low");

	if (chip_id == RCAR_GEN3) {
		irq = FUNC25(pdev, "ch24");
		if (irq < 0) {
			error = irq;
			goto out_release;
		}
		priv->emac_irq = irq;
		for (i = 0; i < NUM_RX_QUEUE; i++) {
			irq = FUNC25(pdev, ravb_rx_irqs[i]);
			if (irq < 0) {
				error = irq;
				goto out_release;
			}
			priv->rx_irqs[i] = irq;
		}
		for (i = 0; i < NUM_TX_QUEUE; i++) {
			irq = FUNC25(pdev, ravb_tx_irqs[i]);
			if (irq < 0) {
				error = irq;
				goto out_release;
			}
			priv->tx_irqs[i] = irq;
		}
	}

	priv->chip_id = chip_id;

	priv->clk = FUNC9(&pdev->dev, NULL);
	if (FUNC2(priv->clk)) {
		error = FUNC3(priv->clk);
		goto out_release;
	}

	ndev->max_mtu = 2048 - (ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN);
	ndev->min_mtu = ETH_MIN_MTU;

	priv->num_tx_desc = chip_id == RCAR_GEN2 ?
		NUM_TX_DESC_GEN2 : NUM_TX_DESC_GEN3;

	/* Set function */
	ndev->netdev_ops = &ravb_netdev_ops;
	ndev->ethtool_ops = &ravb_ethtool_ops;

	/* Set AVB config mode */
	FUNC38(ndev);

	/* Set GTI value */
	error = FUNC40(ndev);
	if (error)
		goto out_release;

	/* Request GTI loading */
	FUNC34(ndev, GCCR, GCCR_LTI, GCCR_LTI);

	if (priv->chip_id != RCAR_GEN2)
		FUNC39(ndev);

	/* Allocate descriptor base address table */
	priv->desc_bat_size = sizeof(struct ravb_desc) * DBAT_ENTRY_NUM;
	priv->desc_bat = FUNC11(ndev->dev.parent, priv->desc_bat_size,
					    &priv->desc_bat_dma, GFP_KERNEL);
	if (!priv->desc_bat) {
		FUNC6(&pdev->dev,
			"Cannot allocate desc base address table (size %d bytes)\n",
			priv->desc_bat_size);
		error = -ENOMEM;
		goto out_release;
	}
	for (q = RAVB_BE; q < DBAT_ENTRY_NUM; q++)
		priv->desc_bat[q].die_dt = DT_EOS;
	FUNC41(ndev, priv->desc_bat_dma, DBAT);

	/* Initialise HW timestamp list */
	FUNC0(&priv->ts_skb_list);

	/* Initialise PTP Clock driver */
	if (chip_id != RCAR_GEN2)
		FUNC35(ndev, pdev);

	/* Debug message level */
	priv->msg_enable = RAVB_DEF_MSG_ENABLE;

	/* Read and set MAC address */
	FUNC37(ndev, FUNC21(np));
	if (!FUNC15(ndev->dev_addr)) {
		FUNC7(&pdev->dev,
			 "no valid MAC address supplied, using a random one\n");
		FUNC13(ndev);
	}

	/* MDIO bus init */
	error = FUNC32(priv);
	if (error) {
		FUNC6(&pdev->dev, "failed to initialize MDIO\n");
		goto out_dma_free;
	}

	FUNC18(ndev, &priv->napi[RAVB_BE], ravb_poll, 64);
	FUNC18(ndev, &priv->napi[RAVB_NC], ravb_poll, 64);

	/* Network device register */
	error = FUNC42(ndev);
	if (error)
		goto out_napi_del;

	FUNC8(&pdev->dev, 1);

	/* Print device information */
	FUNC16(ndev, "Base address at %#x, %pM, IRQ %d.\n",
		    (u32)ndev->base_addr, ndev->dev_addr, ndev->irq);

	FUNC27(pdev, ndev);

	return 0;

out_napi_del:
	FUNC19(&priv->napi[RAVB_NC]);
	FUNC19(&priv->napi[RAVB_BE]);
	FUNC33(priv);
out_dma_free:
	FUNC12(ndev->dev.parent, priv->desc_bat_size, priv->desc_bat,
			  priv->desc_bat_dma);

	/* Stop PTP Clock driver */
	if (chip_id != RCAR_GEN2)
		FUNC36(ndev);
out_release:
	FUNC14(ndev);

	FUNC31(&pdev->dev);
	FUNC28(&pdev->dev);
	return error;
}