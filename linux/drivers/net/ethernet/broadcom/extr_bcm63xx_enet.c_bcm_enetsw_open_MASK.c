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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int irq_rx; int irq_tx; int rx_ring_size; unsigned int rx_desc_alloc_size; int tx_ring_size; unsigned int tx_desc_alloc_size; int tx_desc_count; int num_ports; int /*<<< orphan*/  rx_desc_dma; struct bcm_enet_desc* rx_desc_cpu; int /*<<< orphan*/  tx_desc_dma; struct bcm_enet_desc* tx_desc_cpu; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_skb_size; int /*<<< orphan*/  swphy_poll; struct bcm63xx_enetsw_port* used_ports; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  napi; int /*<<< orphan*/  dma_maxburst; scalar_t__* sw_port_link; scalar_t__ rx_curr_desc; scalar_t__ rx_dirty_desc; scalar_t__ rx_desc_count; int /*<<< orphan*/  tx_lock; scalar_t__ tx_curr_desc; scalar_t__ tx_dirty_desc; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int /*<<< orphan*/  address; } ;
struct bcm63xx_enetsw_port {int force_speed; scalar_t__ force_duplex_full; int /*<<< orphan*/  name; int /*<<< orphan*/  bypass_link; int /*<<< orphan*/  used; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ENETDMAC_CHANCFG ; 
 int /*<<< orphan*/  ENETDMAC_CHANCFG_EN_MASK ; 
 int /*<<< orphan*/  ENETDMAC_IR ; 
 int /*<<< orphan*/  ENETDMAC_IRMASK ; 
 int /*<<< orphan*/  ENETDMAC_IR_PKTDONE_MASK ; 
 int /*<<< orphan*/  ENETDMAC_MAXBURST ; 
 int /*<<< orphan*/  ENETDMAS_RSTART_REG ; 
 int /*<<< orphan*/  ENETDMAS_SRAM2_REG ; 
 int /*<<< orphan*/  ENETDMAS_SRAM3_REG ; 
 int /*<<< orphan*/  ENETDMAS_SRAM4_REG ; 
 int ENETDMA_BUFALLOC_FORCE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENETDMA_CFG_EN_MASK ; 
 int /*<<< orphan*/  ENETDMA_CFG_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENETSW_GMCR_REG ; 
 int ENETSW_GMCR_RST_MIB_MASK ; 
 int ENETSW_IMPOV_1000_MASK ; 
 int ENETSW_IMPOV_100_MASK ; 
 int ENETSW_IMPOV_FDX_MASK ; 
 int ENETSW_IMPOV_FORCE_MASK ; 
 int ENETSW_IMPOV_LINKUP_MASK ; 
 int /*<<< orphan*/  ENETSW_IMPOV_REG ; 
 int /*<<< orphan*/  ENETSW_JMBCTL_MAXSIZE_REG ; 
 int /*<<< orphan*/  ENETSW_JMBCTL_PORT_REG ; 
 int ENETSW_PORTOV_ENABLE_MASK ; 
 int ENETSW_PORTOV_LINKUP_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int ENETSW_PTCTRL_RXDIS_MASK ; 
 int ENETSW_PTCTRL_TXDIS_MASK ; 
 int ENETSW_SWMODE_FWD_EN_MASK ; 
 int /*<<< orphan*/  ENETSW_SWMODE_REG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bcm_enet_isr_dma ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 void* FUNC7 (struct device*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,unsigned int,struct bcm_enet_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bcm_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int,struct net_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 void* FUNC18 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 struct bcm_enet_priv* FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC27 (char*,int /*<<< orphan*/ ) ; 
 int FUNC28 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swphy_poll_timer ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 () ; 

__attribute__((used)) static int FUNC32(struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct device *kdev;
	int i, ret;
	unsigned int size;
	void *p;
	u32 val;

	priv = FUNC24(dev);
	kdev = &priv->pdev->dev;

	/* mask all interrupts and request them */
	FUNC11(priv, 0, ENETDMAC_IRMASK, priv->rx_chan);
	FUNC11(priv, 0, ENETDMAC_IRMASK, priv->tx_chan);

	ret = FUNC28(priv->irq_rx, bcm_enet_isr_dma,
			  0, dev->name, dev);
	if (ret)
		goto out_freeirq;

	if (priv->irq_tx != -1) {
		ret = FUNC28(priv->irq_tx, bcm_enet_isr_dma,
				  0, dev->name, dev);
		if (ret)
			goto out_freeirq_rx;
	}

	/* allocate rx dma ring */
	size = priv->rx_ring_size * sizeof(struct bcm_enet_desc);
	p = FUNC7(kdev, size, &priv->rx_desc_dma, GFP_KERNEL);
	if (!p) {
		FUNC6(kdev, "cannot allocate rx ring %u\n", size);
		ret = -ENOMEM;
		goto out_freeirq_tx;
	}

	priv->rx_desc_alloc_size = size;
	priv->rx_desc_cpu = p;

	/* allocate tx dma ring */
	size = priv->tx_ring_size * sizeof(struct bcm_enet_desc);
	p = FUNC7(kdev, size, &priv->tx_desc_dma, GFP_KERNEL);
	if (!p) {
		FUNC6(kdev, "cannot allocate tx ring\n");
		ret = -ENOMEM;
		goto out_free_rx_ring;
	}

	priv->tx_desc_alloc_size = size;
	priv->tx_desc_cpu = p;

	priv->tx_skb = FUNC18(priv->tx_ring_size, sizeof(struct sk_buff *),
			       GFP_KERNEL);
	if (!priv->tx_skb) {
		FUNC6(kdev, "cannot allocate rx skb queue\n");
		ret = -ENOMEM;
		goto out_free_tx_ring;
	}

	priv->tx_desc_count = priv->tx_ring_size;
	priv->tx_dirty_desc = 0;
	priv->tx_curr_desc = 0;
	FUNC29(&priv->tx_lock);

	/* init & fill rx ring with skbs */
	priv->rx_skb = FUNC18(priv->rx_ring_size, sizeof(struct sk_buff *),
			       GFP_KERNEL);
	if (!priv->rx_skb) {
		FUNC6(kdev, "cannot allocate rx skb queue\n");
		ret = -ENOMEM;
		goto out_free_tx_skb;
	}

	priv->rx_desc_count = 0;
	priv->rx_dirty_desc = 0;
	priv->rx_curr_desc = 0;

	/* disable all ports */
	for (i = 0; i < priv->num_ports; i++) {
		FUNC14(priv, ENETSW_PORTOV_ENABLE_MASK,
			      FUNC3(i));
		FUNC14(priv, ENETSW_PTCTRL_RXDIS_MASK |
			      ENETSW_PTCTRL_TXDIS_MASK,
			      FUNC4(i));

		priv->sw_port_link[i] = 0;
	}

	/* reset mib */
	val = FUNC13(priv, ENETSW_GMCR_REG);
	val |= ENETSW_GMCR_RST_MIB_MASK;
	FUNC14(priv, val, ENETSW_GMCR_REG);
	FUNC21(1);
	val &= ~ENETSW_GMCR_RST_MIB_MASK;
	FUNC14(priv, val, ENETSW_GMCR_REG);
	FUNC21(1);

	/* force CPU port state */
	val = FUNC13(priv, ENETSW_IMPOV_REG);
	val |= ENETSW_IMPOV_FORCE_MASK | ENETSW_IMPOV_LINKUP_MASK;
	FUNC14(priv, val, ENETSW_IMPOV_REG);

	/* enable switch forward engine */
	val = FUNC13(priv, ENETSW_SWMODE_REG);
	val |= ENETSW_SWMODE_FWD_EN_MASK;
	FUNC14(priv, val, ENETSW_SWMODE_REG);

	/* enable jumbo on all ports */
	FUNC15(priv, 0x1ff, ENETSW_JMBCTL_PORT_REG);
	FUNC16(priv, 9728, ENETSW_JMBCTL_MAXSIZE_REG);

	/* initialize flow control buffer allocation */
	FUNC10(priv, ENETDMA_BUFALLOC_FORCE_MASK | 0,
			FUNC0(priv->rx_chan));

	if (FUNC5(dev)) {
		FUNC6(kdev, "cannot allocate rx skb queue\n");
		ret = -ENOMEM;
		goto out;
	}

	/* write rx & tx ring addresses */
	FUNC12(priv, priv->rx_desc_dma,
			 ENETDMAS_RSTART_REG, priv->rx_chan);
	FUNC12(priv, priv->tx_desc_dma,
			 ENETDMAS_RSTART_REG, priv->tx_chan);

	/* clear remaining state ram for rx & tx channel */
	FUNC12(priv, 0, ENETDMAS_SRAM2_REG, priv->rx_chan);
	FUNC12(priv, 0, ENETDMAS_SRAM2_REG, priv->tx_chan);
	FUNC12(priv, 0, ENETDMAS_SRAM3_REG, priv->rx_chan);
	FUNC12(priv, 0, ENETDMAS_SRAM3_REG, priv->tx_chan);
	FUNC12(priv, 0, ENETDMAS_SRAM4_REG, priv->rx_chan);
	FUNC12(priv, 0, ENETDMAS_SRAM4_REG, priv->tx_chan);

	/* set dma maximum burst len */
	FUNC11(priv, priv->dma_maxburst,
			 ENETDMAC_MAXBURST, priv->rx_chan);
	FUNC11(priv, priv->dma_maxburst,
			 ENETDMAC_MAXBURST, priv->tx_chan);

	/* set flow control low/high threshold to 1/3 / 2/3 */
	val = priv->rx_ring_size / 3;
	FUNC10(priv, val, FUNC2(priv->rx_chan));
	val = (priv->rx_ring_size * 2) / 3;
	FUNC10(priv, val, FUNC1(priv->rx_chan));

	/* all set, enable mac and interrupts, start dma engine and
	 * kick rx dma channel
	 */
	FUNC31();
	FUNC10(priv, ENETDMA_CFG_EN_MASK, ENETDMA_CFG_REG);
	FUNC11(priv, ENETDMAC_CHANCFG_EN_MASK,
			 ENETDMAC_CHANCFG, priv->rx_chan);

	/* watch "packet transferred" interrupt in rx and tx */
	FUNC11(priv, ENETDMAC_IR_PKTDONE_MASK,
			 ENETDMAC_IR, priv->rx_chan);
	FUNC11(priv, ENETDMAC_IR_PKTDONE_MASK,
			 ENETDMAC_IR, priv->tx_chan);

	/* make sure we enable napi before rx interrupt  */
	FUNC23(&priv->napi);

	FUNC11(priv, ENETDMAC_IR_PKTDONE_MASK,
			 ENETDMAC_IRMASK, priv->rx_chan);
	FUNC11(priv, ENETDMAC_IR_PKTDONE_MASK,
			 ENETDMAC_IRMASK, priv->tx_chan);

	FUNC25(dev);
	FUNC26(dev);

	/* apply override config for bypass_link ports here. */
	for (i = 0; i < priv->num_ports; i++) {
		struct bcm63xx_enetsw_port *port;
		u8 override;
		port = &priv->used_ports[i];
		if (!port->used)
			continue;

		if (!port->bypass_link)
			continue;

		override = ENETSW_PORTOV_ENABLE_MASK |
			ENETSW_PORTOV_LINKUP_MASK;

		switch (port->force_speed) {
		case 1000:
			override |= ENETSW_IMPOV_1000_MASK;
			break;
		case 100:
			override |= ENETSW_IMPOV_100_MASK;
			break;
		case 10:
			break;
		default:
			FUNC27("invalid forced speed on port %s: assume 10\n",
			       port->name);
			break;
		}

		if (port->force_duplex_full)
			override |= ENETSW_IMPOV_FDX_MASK;


		FUNC14(priv, override, FUNC3(i));
		FUNC14(priv, 0, FUNC4(i));
	}

	/* start phy polling timer */
	FUNC30(&priv->swphy_poll, swphy_poll_timer, 0);
	FUNC22(&priv->swphy_poll, jiffies);
	return 0;

out:
	for (i = 0; i < priv->rx_ring_size; i++) {
		struct bcm_enet_desc *desc;

		if (!priv->rx_skb[i])
			continue;

		desc = &priv->rx_desc_cpu[i];
		FUNC9(kdev, desc->address, priv->rx_skb_size,
				 DMA_FROM_DEVICE);
		FUNC20(priv->rx_skb[i]);
	}
	FUNC19(priv->rx_skb);

out_free_tx_skb:
	FUNC19(priv->tx_skb);

out_free_tx_ring:
	FUNC8(kdev, priv->tx_desc_alloc_size,
			  priv->tx_desc_cpu, priv->tx_desc_dma);

out_free_rx_ring:
	FUNC8(kdev, priv->rx_desc_alloc_size,
			  priv->rx_desc_cpu, priv->rx_desc_dma);

out_freeirq_tx:
	if (priv->irq_tx != -1)
		FUNC17(priv->irq_tx, dev);

out_freeirq_rx:
	FUNC17(priv->irq_rx, dev);

out_freeirq:
	return ret;
}