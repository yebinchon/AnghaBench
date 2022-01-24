#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct sk_buff {int dummy; } ;
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct bcm_enet_priv {int old_duplex; int old_pause; int rx_ring_size; int rx_desc_dma; unsigned int rx_desc_alloc_size; int tx_ring_size; int tx_desc_dma; unsigned int tx_desc_alloc_size; int tx_desc_count; int hw_mtu; int dma_maxburst; int dma_chan_en_mask; int dma_chan_int_mask; int /*<<< orphan*/  irq_rx; int /*<<< orphan*/  irq_tx; struct bcm_enet_desc* rx_desc_cpu; struct bcm_enet_desc* tx_desc_cpu; int /*<<< orphan*/ * tx_skb; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/  rx_skb_size; int /*<<< orphan*/  tx_chan; int /*<<< orphan*/  rx_chan; int /*<<< orphan*/  napi; scalar_t__ dma_has_sram; scalar_t__ rx_curr_desc; scalar_t__ rx_dirty_desc; scalar_t__ rx_desc_count; int /*<<< orphan*/  tx_lock; scalar_t__ tx_curr_desc; scalar_t__ tx_dirty_desc; scalar_t__ old_link; int /*<<< orphan*/  pause_auto; int /*<<< orphan*/  pause_rx; int /*<<< orphan*/  phy_id; TYPE_2__* mii_bus; scalar_t__ has_phy; TYPE_1__* pdev; } ;
struct bcm_enet_desc {int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  phy_id ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int BCMENET_TX_FIFO_TRESH ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ENETDMAC_BUFALLOC ; 
 int /*<<< orphan*/  ENETDMAC_CHANCFG ; 
 int /*<<< orphan*/  ENETDMAC_FC ; 
 int /*<<< orphan*/  ENETDMAC_IR ; 
 int /*<<< orphan*/  ENETDMAC_IRMASK ; 
 int /*<<< orphan*/  ENETDMAC_LEN ; 
 int /*<<< orphan*/  ENETDMAC_MAXBURST ; 
 int /*<<< orphan*/  ENETDMAC_RSTART ; 
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
 int ENET_CTL_ENABLE_MASK ; 
 int /*<<< orphan*/  ENET_CTL_REG ; 
 int /*<<< orphan*/  ENET_IRMASK_REG ; 
 int ENET_IR_MIB ; 
 int /*<<< orphan*/  ENET_IR_REG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ENET_RXMAXLEN_REG ; 
 int /*<<< orphan*/  ENET_TXMAXLEN_REG ; 
 int /*<<< orphan*/  ENET_TXWMARK_REG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC5 (struct phy_device*) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 char* PHY_ID_FMT ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int FUNC6 (struct phy_device*) ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  bcm_enet_adjust_phy_link ; 
 int /*<<< orphan*/  bcm_enet_isr_dma ; 
 int /*<<< orphan*/  bcm_enet_isr_mac ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 void* FUNC11 (struct device*,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,unsigned int,struct bcm_enet_desc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct net_device*) ; 
 void* FUNC20 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 struct bcm_enet_priv* FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct phy_device*) ; 
 struct phy_device* FUNC28 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct phy_device*) ; 
 int FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC35 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 () ; 

__attribute__((used)) static int FUNC38(struct net_device *dev)
{
	struct bcm_enet_priv *priv;
	struct sockaddr addr;
	struct device *kdev;
	struct phy_device *phydev;
	int i, ret;
	unsigned int size;
	char phy_id[MII_BUS_ID_SIZE + 3];
	void *p;
	u32 val;

	priv = FUNC25(dev);
	kdev = &priv->pdev->dev;

	if (priv->has_phy) {
		/* connect to PHY */
		FUNC35(phy_id, sizeof(phy_id), PHY_ID_FMT,
			 priv->mii_bus->id, priv->phy_id);

		phydev = FUNC28(dev, phy_id, bcm_enet_adjust_phy_link,
				     PHY_INTERFACE_MODE_MII);

		if (FUNC5(phydev)) {
			FUNC10(kdev, "could not attach to PHY\n");
			return FUNC6(phydev);
		}

		/* mask with MAC supported features */
		FUNC33(phydev);
		FUNC30(phydev, SPEED_100);
		FUNC31(phydev, priv->pause_rx, priv->pause_rx,
				  priv->pause_auto);

		FUNC27(phydev);

		priv->old_link = 0;
		priv->old_duplex = -1;
		priv->old_pause = -1;
	} else {
		phydev = NULL;
	}

	/* mask all interrupts and request them */
	FUNC18(priv, 0, ENET_IRMASK_REG);
	FUNC15(priv, 0, ENETDMAC_IRMASK, priv->rx_chan);
	FUNC15(priv, 0, ENETDMAC_IRMASK, priv->tx_chan);

	ret = FUNC34(dev->irq, bcm_enet_isr_mac, 0, dev->name, dev);
	if (ret)
		goto out_phy_disconnect;

	ret = FUNC34(priv->irq_rx, bcm_enet_isr_dma, 0,
			  dev->name, dev);
	if (ret)
		goto out_freeirq;

	ret = FUNC34(priv->irq_tx, bcm_enet_isr_dma,
			  0, dev->name, dev);
	if (ret)
		goto out_freeirq_rx;

	/* initialize perfect match registers */
	for (i = 0; i < 4; i++) {
		FUNC18(priv, 0, FUNC4(i));
		FUNC18(priv, 0, FUNC3(i));
	}

	/* write device mac address */
	FUNC23(addr.sa_data, dev->dev_addr, ETH_ALEN);
	FUNC9(dev, &addr);

	/* allocate rx dma ring */
	size = priv->rx_ring_size * sizeof(struct bcm_enet_desc);
	p = FUNC11(kdev, size, &priv->rx_desc_dma, GFP_KERNEL);
	if (!p) {
		ret = -ENOMEM;
		goto out_freeirq_tx;
	}

	priv->rx_desc_alloc_size = size;
	priv->rx_desc_cpu = p;

	/* allocate tx dma ring */
	size = priv->tx_ring_size * sizeof(struct bcm_enet_desc);
	p = FUNC11(kdev, size, &priv->tx_desc_dma, GFP_KERNEL);
	if (!p) {
		ret = -ENOMEM;
		goto out_free_rx_ring;
	}

	priv->tx_desc_alloc_size = size;
	priv->tx_desc_cpu = p;

	priv->tx_skb = FUNC20(priv->tx_ring_size, sizeof(struct sk_buff *),
			       GFP_KERNEL);
	if (!priv->tx_skb) {
		ret = -ENOMEM;
		goto out_free_tx_ring;
	}

	priv->tx_desc_count = priv->tx_ring_size;
	priv->tx_dirty_desc = 0;
	priv->tx_curr_desc = 0;
	FUNC36(&priv->tx_lock);

	/* init & fill rx ring with skbs */
	priv->rx_skb = FUNC20(priv->rx_ring_size, sizeof(struct sk_buff *),
			       GFP_KERNEL);
	if (!priv->rx_skb) {
		ret = -ENOMEM;
		goto out_free_tx_skb;
	}

	priv->rx_desc_count = 0;
	priv->rx_dirty_desc = 0;
	priv->rx_curr_desc = 0;

	/* initialize flow control buffer allocation */
	if (priv->dma_has_sram)
		FUNC14(priv, ENETDMA_BUFALLOC_FORCE_MASK | 0,
				FUNC0(priv->rx_chan));
	else
		FUNC15(priv, ENETDMA_BUFALLOC_FORCE_MASK | 0,
				ENETDMAC_BUFALLOC, priv->rx_chan);

	if (FUNC8(dev)) {
		FUNC10(kdev, "cannot allocate rx skb queue\n");
		ret = -ENOMEM;
		goto out;
	}

	/* write rx & tx ring addresses */
	if (priv->dma_has_sram) {
		FUNC16(priv, priv->rx_desc_dma,
				 ENETDMAS_RSTART_REG, priv->rx_chan);
		FUNC16(priv, priv->tx_desc_dma,
			 ENETDMAS_RSTART_REG, priv->tx_chan);
	} else {
		FUNC15(priv, priv->rx_desc_dma,
				ENETDMAC_RSTART, priv->rx_chan);
		FUNC15(priv, priv->tx_desc_dma,
				ENETDMAC_RSTART, priv->tx_chan);
	}

	/* clear remaining state ram for rx & tx channel */
	if (priv->dma_has_sram) {
		FUNC16(priv, 0, ENETDMAS_SRAM2_REG, priv->rx_chan);
		FUNC16(priv, 0, ENETDMAS_SRAM2_REG, priv->tx_chan);
		FUNC16(priv, 0, ENETDMAS_SRAM3_REG, priv->rx_chan);
		FUNC16(priv, 0, ENETDMAS_SRAM3_REG, priv->tx_chan);
		FUNC16(priv, 0, ENETDMAS_SRAM4_REG, priv->rx_chan);
		FUNC16(priv, 0, ENETDMAS_SRAM4_REG, priv->tx_chan);
	} else {
		FUNC15(priv, 0, ENETDMAC_FC, priv->rx_chan);
		FUNC15(priv, 0, ENETDMAC_FC, priv->tx_chan);
	}

	/* set max rx/tx length */
	FUNC18(priv, priv->hw_mtu, ENET_RXMAXLEN_REG);
	FUNC18(priv, priv->hw_mtu, ENET_TXMAXLEN_REG);

	/* set dma maximum burst len */
	FUNC15(priv, priv->dma_maxburst,
			 ENETDMAC_MAXBURST, priv->rx_chan);
	FUNC15(priv, priv->dma_maxburst,
			 ENETDMAC_MAXBURST, priv->tx_chan);

	/* set correct transmit fifo watermark */
	FUNC18(priv, BCMENET_TX_FIFO_TRESH, ENET_TXWMARK_REG);

	/* set flow control low/high threshold to 1/3 / 2/3 */
	if (priv->dma_has_sram) {
		val = priv->rx_ring_size / 3;
		FUNC14(priv, val, FUNC2(priv->rx_chan));
		val = (priv->rx_ring_size * 2) / 3;
		FUNC14(priv, val, FUNC1(priv->rx_chan));
	} else {
		FUNC15(priv, 5, ENETDMAC_FC, priv->rx_chan);
		FUNC15(priv, priv->rx_ring_size, ENETDMAC_LEN, priv->rx_chan);
		FUNC15(priv, priv->tx_ring_size, ENETDMAC_LEN, priv->tx_chan);
	}

	/* all set, enable mac and interrupts, start dma engine and
	 * kick rx dma channel */
	FUNC37();
	val = FUNC17(priv, ENET_CTL_REG);
	val |= ENET_CTL_ENABLE_MASK;
	FUNC18(priv, val, ENET_CTL_REG);
	if (priv->dma_has_sram)
		FUNC14(priv, ENETDMA_CFG_EN_MASK, ENETDMA_CFG_REG);
	FUNC15(priv, priv->dma_chan_en_mask,
			 ENETDMAC_CHANCFG, priv->rx_chan);

	/* watch "mib counters about to overflow" interrupt */
	FUNC18(priv, ENET_IR_MIB, ENET_IR_REG);
	FUNC18(priv, ENET_IR_MIB, ENET_IRMASK_REG);

	/* watch "packet transferred" interrupt in rx and tx */
	FUNC15(priv, priv->dma_chan_int_mask,
			 ENETDMAC_IR, priv->rx_chan);
	FUNC15(priv, priv->dma_chan_int_mask,
			 ENETDMAC_IR, priv->tx_chan);

	/* make sure we enable napi before rx interrupt  */
	FUNC24(&priv->napi);

	FUNC15(priv, priv->dma_chan_int_mask,
			 ENETDMAC_IRMASK, priv->rx_chan);
	FUNC15(priv, priv->dma_chan_int_mask,
			 ENETDMAC_IRMASK, priv->tx_chan);

	if (phydev)
		FUNC32(phydev);
	else
		FUNC7(dev);

	FUNC26(dev);
	return 0;

out:
	for (i = 0; i < priv->rx_ring_size; i++) {
		struct bcm_enet_desc *desc;

		if (!priv->rx_skb[i])
			continue;

		desc = &priv->rx_desc_cpu[i];
		FUNC13(kdev, desc->address, priv->rx_skb_size,
				 DMA_FROM_DEVICE);
		FUNC22(priv->rx_skb[i]);
	}
	FUNC21(priv->rx_skb);

out_free_tx_skb:
	FUNC21(priv->tx_skb);

out_free_tx_ring:
	FUNC12(kdev, priv->tx_desc_alloc_size,
			  priv->tx_desc_cpu, priv->tx_desc_dma);

out_free_rx_ring:
	FUNC12(kdev, priv->rx_desc_alloc_size,
			  priv->rx_desc_cpu, priv->rx_desc_dma);

out_freeirq_tx:
	FUNC19(priv->irq_tx, dev);

out_freeirq_rx:
	FUNC19(priv->irq_rx, dev);

out_freeirq:
	FUNC19(dev->irq, dev);

out_phy_disconnect:
	if (phydev)
		FUNC29(phydev);

	return ret;
}