#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pasemi_mac {scalar_t__ type; TYPE_5__* tx; int /*<<< orphan*/  napi; TYPE_5__* rx; TYPE_1__* pdev; int /*<<< orphan*/  rx_irq_name; int /*<<< orphan*/  tx_irq_name; int /*<<< orphan*/  dma_if; int /*<<< orphan*/  num_cs; } ;
struct net_device {int mtu; char* name; scalar_t__ phydev; } ;
struct TYPE_14__ {int /*<<< orphan*/  chno; } ;
struct TYPE_10__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  chno; } ;
struct TYPE_13__ {TYPE_2__ chan; int /*<<< orphan*/  clean_timer; } ;
struct TYPE_12__ {TYPE_7__ chan; } ;
struct TYPE_11__ {TYPE_7__ chan; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ MAC_TYPE_GMAC ; 
 int PAS_DMA_RXCHAN_CCMDSTA_DT ; 
 int PAS_DMA_RXCHAN_CCMDSTA_DU ; 
 int PAS_DMA_RXCHAN_CCMDSTA_FD ; 
 int PAS_DMA_RXCHAN_CCMDSTA_OD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAS_DMA_RXINT_RCMDSTA_BP ; 
 int PAS_DMA_RXINT_RCMDSTA_BT ; 
 int PAS_DMA_RXINT_RCMDSTA_DROPS_M ; 
 int PAS_DMA_RXINT_RCMDSTA_EN ; 
 int PAS_DMA_RXINT_RCMDSTA_OO ; 
 int PAS_DMA_TXCHAN_TCMDSTA_DA ; 
 int PAS_DMA_TXCHAN_TCMDSTA_DB ; 
 int PAS_DMA_TXCHAN_TCMDSTA_DE ; 
 int PAS_DMA_TXCHAN_TCMDSTA_SZ ; 
 int /*<<< orphan*/  PAS_IOB_DMA_COM_TIMEOUTCFG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  PAS_MAC_CFG_PCFG ; 
 unsigned int PAS_MAC_CFG_PCFG_CE ; 
 unsigned int PAS_MAC_CFG_PCFG_PR ; 
 unsigned int PAS_MAC_CFG_PCFG_S1 ; 
 unsigned int PAS_MAC_CFG_PCFG_SPD_10G ; 
 unsigned int PAS_MAC_CFG_PCFG_SPD_1G ; 
 unsigned int PAS_MAC_CFG_PCFG_TSR_10G ; 
 unsigned int PAS_MAC_CFG_PCFG_TSR_1G ; 
 int /*<<< orphan*/  PAS_MAC_CFG_TXP ; 
 unsigned int FUNC7 (int) ; 
 unsigned int PAS_MAC_CFG_TXP_FCE ; 
 unsigned int FUNC8 (int) ; 
 unsigned int FUNC9 (int) ; 
 unsigned int FUNC10 (int) ; 
 unsigned int FUNC11 (int) ; 
 int /*<<< orphan*/  PAS_MAC_IPC_CHNL ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 struct pasemi_mac* FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC26 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC27 (struct pasemi_mac*) ; 
 int FUNC28 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC29 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC31 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  pasemi_mac_rx_intr ; 
 int /*<<< orphan*/  FUNC32 (struct pasemi_mac*) ; 
 int FUNC33 (struct net_device*) ; 
 TYPE_5__* FUNC34 (struct net_device*) ; 
 int /*<<< orphan*/  pasemi_mac_tx_intr ; 
 int /*<<< orphan*/  pasemi_mac_tx_timer ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__) ; 
 int FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_4__* FUNC37 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC40 (struct pasemi_mac*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct pasemi_mac*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC44(struct net_device *dev)
{
	struct pasemi_mac *mac = FUNC21(dev);
	unsigned int flags;
	int i, ret;

	flags = PAS_MAC_CFG_TXP_FCE | FUNC8(3) |
		FUNC9(3) | FUNC7(0xf) |
		FUNC11(8) | FUNC10(12);

	FUNC43(mac, PAS_MAC_CFG_TXP, flags);

	ret = FUNC33(dev);
	if (ret)
		goto out_rx_resources;

	mac->tx = FUNC34(dev);

	if (!mac->tx)
		goto out_tx_ring;

	/* We might already have allocated rings in case mtu was changed
	 * before interface was brought up.
	 */
	if (dev->mtu > 1500 && !mac->num_cs) {
		FUNC32(mac);
		if (!mac->num_cs)
			goto out_tx_ring;
	}

	/* Zero out rmon counters */
	for (i = 0; i < 32; i++)
		FUNC43(mac, FUNC14(i), 0);

	/* 0x3ff with 33MHz clock is about 31us */
	FUNC42(PAS_IOB_DMA_COM_TIMEOUTCFG,
		      FUNC2(0x3ff));

	FUNC42(FUNC3(mac->rx->chan.chno),
		      FUNC4(256));

	FUNC42(FUNC5(mac->tx->chan.chno),
		      FUNC6(32));

	FUNC43(mac, PAS_MAC_IPC_CHNL,
		      FUNC13(mac->rx->chan.chno) |
		      FUNC12(mac->rx->chan.chno));

	/* enable rx if */
	FUNC41(FUNC1(mac->dma_if),
		      PAS_DMA_RXINT_RCMDSTA_EN |
		      PAS_DMA_RXINT_RCMDSTA_DROPS_M |
		      PAS_DMA_RXINT_RCMDSTA_BP |
		      PAS_DMA_RXINT_RCMDSTA_OO |
		      PAS_DMA_RXINT_RCMDSTA_BT);

	/* enable rx channel */
	FUNC24(&FUNC37(mac)->chan, PAS_DMA_RXCHAN_CCMDSTA_DU |
						   PAS_DMA_RXCHAN_CCMDSTA_OD |
						   PAS_DMA_RXCHAN_CCMDSTA_FD |
						   PAS_DMA_RXCHAN_CCMDSTA_DT);

	/* enable tx channel */
	FUNC24(&FUNC40(mac)->chan, PAS_DMA_TXCHAN_TCMDSTA_SZ |
						   PAS_DMA_TXCHAN_TCMDSTA_DB |
						   PAS_DMA_TXCHAN_TCMDSTA_DE |
						   PAS_DMA_TXCHAN_TCMDSTA_DA);

	FUNC29(dev, RX_RING_SIZE);

	FUNC41(FUNC0(FUNC37(mac)->chan.chno),
		      RX_RING_SIZE>>1);

	/* Clear out any residual packet count state from firmware */
	FUNC30(mac);
	FUNC31(mac);

	flags = PAS_MAC_CFG_PCFG_S1 | PAS_MAC_CFG_PCFG_PR | PAS_MAC_CFG_PCFG_CE;

	if (mac->type == MAC_TYPE_GMAC)
		flags |= PAS_MAC_CFG_PCFG_TSR_1G | PAS_MAC_CFG_PCFG_SPD_1G;
	else
		flags |= PAS_MAC_CFG_PCFG_TSR_10G | PAS_MAC_CFG_PCFG_SPD_10G;

	/* Enable interface in MAC */
	FUNC43(mac, PAS_MAC_CFG_PCFG, flags);

	ret = FUNC28(dev);
	if (ret) {
		/* Since we won't get link notification, just enable RX */
		FUNC27(mac);
		if (mac->type == MAC_TYPE_GMAC) {
			/* Warn for missing PHY on SGMII (1Gig) ports */
			FUNC16(&mac->pdev->dev,
				 "PHY init failed: %d.\n", ret);
			FUNC16(&mac->pdev->dev,
				 "Defaulting to 1Gbit full duplex\n");
		}
	}

	FUNC22(dev);
	FUNC20(&mac->napi);

	FUNC38(mac->tx_irq_name, sizeof(mac->tx_irq_name), "%s tx",
		 dev->name);

	ret = FUNC36(mac->tx->chan.irq, pasemi_mac_tx_intr, 0,
			  mac->tx_irq_name, mac->tx);
	if (ret) {
		FUNC15(&mac->pdev->dev, "request_irq of irq %d failed: %d\n",
			mac->tx->chan.irq, ret);
		goto out_tx_int;
	}

	FUNC38(mac->rx_irq_name, sizeof(mac->rx_irq_name), "%s rx",
		 dev->name);

	ret = FUNC36(mac->rx->chan.irq, pasemi_mac_rx_intr, 0,
			  mac->rx_irq_name, mac->rx);
	if (ret) {
		FUNC15(&mac->pdev->dev, "request_irq of irq %d failed: %d\n",
			mac->rx->chan.irq, ret);
		goto out_rx_int;
	}

	if (dev->phydev)
		FUNC35(dev->phydev);

	FUNC39(&mac->tx->clean_timer, pasemi_mac_tx_timer, 0);
	FUNC18(&mac->tx->clean_timer, jiffies + HZ);

	return 0;

out_rx_int:
	FUNC17(mac->tx->chan.irq, mac->tx);
out_tx_int:
	FUNC19(&mac->napi);
	FUNC23(dev);
out_tx_ring:
	if (mac->tx)
		FUNC26(mac);
	FUNC25(mac);
out_rx_resources:

	return ret;
}