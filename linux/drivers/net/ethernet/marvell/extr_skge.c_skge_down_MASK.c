#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;
struct skge_port {int port; int /*<<< orphan*/ * mem; int /*<<< orphan*/  dma; int /*<<< orphan*/  mem_size; TYPE_2__ tx_ring; TYPE_1__ rx_ring; struct skge_hw* hw; int /*<<< orphan*/  napi; int /*<<< orphan*/  link_timer; int /*<<< orphan*/  netdev; } ;
struct skge_hw {scalar_t__ phy_type; long intr_mask; int ports; TYPE_3__* pdev; int /*<<< orphan*/  hw_lock; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 long CSR_SET_RESET ; 
 long CSR_STOP ; 
 long GMF_RST_SET ; 
 int /*<<< orphan*/  LED_MODE_OFF ; 
 long LED_REG_OFF ; 
 int /*<<< orphan*/  LNK_LED_REG ; 
 long MFF_RST_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 int /*<<< orphan*/  Q_XA1 ; 
 int /*<<< orphan*/  Q_XA2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_CTRL ; 
 long RB_DIS_OP_MD ; 
 long RB_RST_SET ; 
 int /*<<< orphan*/  RX_GMF_CTRL_T ; 
 int /*<<< orphan*/  RX_MFF_CTRL2 ; 
 scalar_t__ SK_PHY_XMAC ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXA_CTRL ; 
 long TXA_DIS_ALLOC ; 
 long TXA_DIS_FSYNC ; 
 int /*<<< orphan*/  TXA_ITI_INI ; 
 int /*<<< orphan*/  TXA_LIM_INI ; 
 long TXA_STOP_RC ; 
 int /*<<< orphan*/  TX_GMF_CTRL_T ; 
 int /*<<< orphan*/  TX_MFF_CTRL2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct skge_port*) ; 
 int /*<<< orphan*/  ifdown ; 
 scalar_t__ FUNC6 (struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct skge_port* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct skge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long* portmask ; 
 int /*<<< orphan*/  FUNC16 (struct skge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct skge_port*) ; 
 int /*<<< orphan*/  FUNC19 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct skge_hw*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC22 (struct skge_hw*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * txqaddr ; 
 int /*<<< orphan*/  FUNC25 (struct skge_port*) ; 

__attribute__((used)) static int FUNC26(struct net_device *dev)
{
	struct skge_port *skge = FUNC9(dev);
	struct skge_hw *hw = skge->hw;
	int port = skge->port;

	if (!skge->mem)
		return 0;

	FUNC11(skge, ifdown, skge->netdev, "disabling interface\n");

	FUNC12(dev);

	if (FUNC6(hw) && hw->phy_type == SK_PHY_XMAC)
		FUNC3(&skge->link_timer);

	FUNC8(&skge->napi);
	FUNC10(dev);

	FUNC23(&hw->hw_lock);
	hw->intr_mask &= ~portmask[port];
	FUNC21(hw, B0_IMSK, (hw->ports == 1) ? 0 : hw->intr_mask);
	FUNC17(hw, B0_IMSK);
	FUNC24(&hw->hw_lock);

	if (hw->ports == 1)
		FUNC4(hw->pdev->irq, hw);

	FUNC22(skge->hw, FUNC2(skge->port, LNK_LED_REG), LED_REG_OFF);
	if (FUNC6(hw))
		FUNC5(skge);
	else
		FUNC25(skge);

	/* Stop transmitter */
	FUNC22(hw, FUNC0(txqaddr[port], Q_CSR), CSR_STOP);
	FUNC21(hw, FUNC1(txqaddr[port], RB_CTRL),
		     RB_RST_SET|RB_DIS_OP_MD);


	/* Disable Force Sync bit and Enable Alloc bit */
	FUNC22(hw, FUNC2(port, TXA_CTRL),
		    TXA_DIS_FSYNC | TXA_DIS_ALLOC | TXA_STOP_RC);

	/* Stop Interval Timer and Limit Counter of Tx Arbiter */
	FUNC21(hw, FUNC2(port, TXA_ITI_INI), 0L);
	FUNC21(hw, FUNC2(port, TXA_LIM_INI), 0L);

	/* Reset PCI FIFO */
	FUNC21(hw, FUNC0(txqaddr[port], Q_CSR), CSR_SET_RESET);
	FUNC21(hw, FUNC1(txqaddr[port], RB_CTRL), RB_RST_SET);

	/* Reset the RAM Buffer async Tx queue */
	FUNC22(hw, FUNC1(port == 0 ? Q_XA1 : Q_XA2, RB_CTRL), RB_RST_SET);

	FUNC19(hw, port);

	if (FUNC6(hw)) {
		FUNC22(hw, FUNC2(port, TX_MFF_CTRL2), MFF_RST_SET);
		FUNC22(hw, FUNC2(port, RX_MFF_CTRL2), MFF_RST_SET);
	} else {
		FUNC22(hw, FUNC2(port, RX_GMF_CTRL_T), GMF_RST_SET);
		FUNC22(hw, FUNC2(port, TX_GMF_CTRL_T), GMF_RST_SET);
	}

	FUNC16(skge, LED_MODE_OFF);

	FUNC13(dev);
	FUNC20(dev);
	FUNC14(dev);

	FUNC18(skge);

	FUNC7(skge->rx_ring.start);
	FUNC7(skge->tx_ring.start);
	FUNC15(hw->pdev, skge->mem_size, skge->mem, skge->dma);
	skge->mem = NULL;
	return 0;
}