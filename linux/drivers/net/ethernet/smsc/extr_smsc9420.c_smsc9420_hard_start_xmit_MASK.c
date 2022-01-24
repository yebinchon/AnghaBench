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
struct smsc9420_pdata {int tx_ring_head; int tx_ring_tail; TYPE_2__* tx_ring; int /*<<< orphan*/  dev; TYPE_1__* tx_buffers; int /*<<< orphan*/  pdev; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  void* dma_addr_t ;
struct TYPE_4__ {int status; int length; void* buffer1; } ;
struct TYPE_3__ {int skb; int mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TDES0_OWN_ ; 
 int TDES1_IC_ ; 
 int TDES1_LS_ ; 
 int TDES1_TER_ ; 
 int /*<<< orphan*/  TX_POLL_DEMAND ; 
 int TX_RING_SIZE ; 
 struct smsc9420_pdata* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct smsc9420_pdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct smsc9420_pdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tx_err ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb,
					    struct net_device *dev)
{
	struct smsc9420_pdata *pd = FUNC1(dev);
	dma_addr_t mapping;
	int index = pd->tx_ring_head;
	u32 tmp_desc1;
	bool about_to_take_last_desc =
		(((pd->tx_ring_head + 2) % TX_RING_SIZE) == pd->tx_ring_tail);

	FUNC8(dev);

	FUNC6();
	FUNC0(pd->tx_ring[index].status & TDES0_OWN_);
	FUNC0(pd->tx_buffers[index].skb);
	FUNC0(pd->tx_buffers[index].mapping);

	mapping = FUNC5(pd->pdev, skb->data,
				 skb->len, PCI_DMA_TODEVICE);
	if (FUNC4(pd->pdev, mapping)) {
		FUNC3(pd, tx_err, pd->dev,
			   "pci_map_single failed, dropping packet\n");
		return NETDEV_TX_BUSY;
	}

	pd->tx_buffers[index].skb = skb;
	pd->tx_buffers[index].mapping = mapping;

	tmp_desc1 = (TDES1_LS_ | ((u32)skb->len & 0x7FF));
	if (FUNC11(about_to_take_last_desc)) {
		tmp_desc1 |= TDES1_IC_;
		FUNC2(pd->dev);
	}

	/* check if we are at the last descriptor and need to set EOR */
	if (FUNC11(index == (TX_RING_SIZE - 1)))
		tmp_desc1 |= TDES1_TER_;

	pd->tx_ring[index].buffer1 = mapping;
	pd->tx_ring[index].length = tmp_desc1;
	FUNC12();

	/* increment head */
	pd->tx_ring_head = (pd->tx_ring_head + 1) % TX_RING_SIZE;

	/* assign ownership to DMAC */
	pd->tx_ring[index].status = TDES0_OWN_;
	FUNC12();

	FUNC7(skb);

	/* kick the DMA */
	FUNC10(pd, TX_POLL_DEMAND, 1);
	FUNC9(pd);

	return NETDEV_TX_OK;
}