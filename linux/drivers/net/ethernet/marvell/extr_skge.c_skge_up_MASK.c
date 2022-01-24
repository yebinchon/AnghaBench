#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct skge_tx_desc {int dummy; } ;
struct skge_rx_desc {int dummy; } ;
struct TYPE_4__ {int count; scalar_t__ to_clean; scalar_t__ to_use; int /*<<< orphan*/  start; } ;
struct skge_port {int port; scalar_t__ rx_buf_size; size_t mem_size; int dma; int /*<<< orphan*/ * mem; TYPE_1__ rx_ring; TYPE_1__ tx_ring; int /*<<< orphan*/  napi; int /*<<< orphan*/  netdev; struct skge_hw* hw; } ;
struct skge_hw {int ports; int ram_size; int ram_offset; TYPE_2__* pdev; int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  intr_mask; int /*<<< orphan*/  phy_lock; } ;
struct net_device {scalar_t__ mtu; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B0_IMSK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CSR_IRQ_CL_F ; 
 int CSR_START ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  LED_MODE_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_CSR ; 
 scalar_t__ RX_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  ifup ; 
 scalar_t__ FUNC4 (struct skge_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 struct skge_port* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct skge_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_2__*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * portmask ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skge_hw*) ; 
 int /*<<< orphan*/ * rxqaddr ; 
 int /*<<< orphan*/  skge_intr ; 
 int /*<<< orphan*/  FUNC15 (struct skge_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct skge_port*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct skge_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int FUNC19 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct skge_port*) ; 
 int FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct skge_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct skge_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * txqaddr ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (struct skge_hw*,int) ; 

__attribute__((used)) static int FUNC32(struct net_device *dev)
{
	struct skge_port *skge = FUNC9(dev);
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	u32 chunk, ram_addr;
	size_t rx_size, tx_size;
	int err;

	if (!FUNC5(dev->dev_addr))
		return -EINVAL;

	FUNC11(skge, ifup, skge->netdev, "enabling interface\n");

	if (dev->mtu > RX_BUF_SIZE)
		skge->rx_buf_size = dev->mtu + ETH_HLEN;
	else
		skge->rx_buf_size = RX_BUF_SIZE;


	rx_size = skge->rx_ring.count * sizeof(struct skge_rx_desc);
	tx_size = skge->tx_ring.count * sizeof(struct skge_tx_desc);
	skge->mem_size = tx_size + rx_size;
	skge->mem = FUNC12(hw->pdev, skge->mem_size, &skge->dma);
	if (!skge->mem)
		return -ENOMEM;

	FUNC0(skge->dma & 7);

	if (FUNC29(skge->dma) != FUNC29(skge->dma + skge->mem_size)) {
		FUNC2(&hw->pdev->dev, "pci_alloc_consistent region crosses 4G boundary\n");
		err = -EINVAL;
		goto free_pci_mem;
	}

	err = FUNC19(&skge->rx_ring, skge->mem, skge->dma);
	if (err)
		goto free_pci_mem;

	err = FUNC21(dev);
	if (err)
		goto free_rx_ring;

	err = FUNC19(&skge->tx_ring, skge->mem + rx_size,
			      skge->dma + rx_size);
	if (err)
		goto free_rx_ring;

	if (hw->ports == 1) {
		err = FUNC14(hw->pdev->irq, skge_intr, IRQF_SHARED,
				  dev->name, hw);
		if (err) {
			FUNC8(dev, "Unable to allocate interrupt %d error: %d\n",
				   hw->pdev->irq, err);
			goto free_tx_ring;
		}
	}

	/* Initialize MAC */
	FUNC10(dev);
	FUNC25(&hw->phy_lock);
	if (FUNC4(hw))
		FUNC3(hw, port);
	else
		FUNC31(hw, port);
	FUNC27(&hw->phy_lock);

	/* Configure RAMbuffers - equally between ports and tx/rx */
	chunk = (hw->ram_size  - hw->ram_offset) / (hw->ports * 2);
	ram_addr = hw->ram_offset + 2 * chunk * port;

	FUNC17(hw, rxqaddr[port], ram_addr, chunk);
	FUNC16(skge, rxqaddr[port], skge->rx_ring.to_clean);

	FUNC0(skge->tx_ring.to_use != skge->tx_ring.to_clean);
	FUNC17(hw, txqaddr[port], ram_addr+chunk, chunk);
	FUNC16(skge, txqaddr[port], skge->tx_ring.to_use);

	/* Start receiver BMU */
	FUNC30();
	FUNC24(hw, FUNC1(rxqaddr[port], Q_CSR), CSR_START | CSR_IRQ_CL_F);
	FUNC15(skge, LED_MODE_ON);

	FUNC26(&hw->hw_lock);
	hw->intr_mask |= portmask[port];
	FUNC23(hw, B0_IMSK, hw->intr_mask);
	FUNC18(hw, B0_IMSK);
	FUNC28(&hw->hw_lock);

	FUNC7(&skge->napi);

	FUNC22(dev);

	return 0;

 free_tx_ring:
	FUNC6(skge->tx_ring.start);
 free_rx_ring:
	FUNC20(skge);
	FUNC6(skge->rx_ring.start);
 free_pci_mem:
	FUNC13(hw->pdev, skge->mem_size, skge->mem, skge->dma);
	skge->mem = NULL;

	return err;
}