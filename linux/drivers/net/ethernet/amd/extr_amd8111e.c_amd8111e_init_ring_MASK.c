#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct amd8111e_tx_dr {int dummy; } ;
struct amd8111e_rx_dr {int dummy; } ;
struct amd8111e_priv {int /*<<< orphan*/  tx_ring_dma_addr; TYPE_2__* tx_ring; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  rx_ring_dma_addr; TYPE_2__* rx_ring; scalar_t__ rx_buff_len; int /*<<< orphan*/ * rx_dma_addr; TYPE_1__** rx_skbuff; scalar_t__ opened; scalar_t__ tx_ring_idx; scalar_t__ tx_complete_idx; scalar_t__ tx_idx; scalar_t__ rx_idx; } ;
struct TYPE_6__ {void* buff_count; scalar_t__ tx_flags; scalar_t__ buff_phy_addr; void* rx_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int NUM_RX_BUFFERS ; 
 int NUM_RX_RING_DR ; 
 int NUM_TX_RING_DR ; 
 scalar_t__ OWN_BIT ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (struct net_device*,scalar_t__) ; 
 struct amd8111e_priv* FUNC6 (struct net_device*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct amd8111e_priv *lp = FUNC6(dev);
	int i;

	lp->rx_idx = lp->tx_idx = 0;
	lp->tx_complete_idx = 0;
	lp->tx_ring_idx = 0;


	if(lp->opened)
		/* Free previously allocated transmit and receive skbs */
		FUNC0(dev);

	else{
		 /* allocate the tx and rx descriptors */
	     	if((lp->tx_ring = FUNC7(lp->pci_dev,
			sizeof(struct amd8111e_tx_dr)*NUM_TX_RING_DR,
			&lp->tx_ring_dma_addr)) == NULL)

			goto err_no_mem;

	     	if((lp->rx_ring = FUNC7(lp->pci_dev,
			sizeof(struct amd8111e_rx_dr)*NUM_RX_RING_DR,
			&lp->rx_ring_dma_addr)) == NULL)

			goto err_free_tx_ring;

	}
	/* Set new receive buff size */
	FUNC1(dev);

	/* Allocating receive  skbs */
	for (i = 0; i < NUM_RX_BUFFERS; i++) {

		lp->rx_skbuff[i] = FUNC5(dev, lp->rx_buff_len);
		if (!lp->rx_skbuff[i]) {
				/* Release previos allocated skbs */
				for(--i; i >= 0 ;i--)
					FUNC4(lp->rx_skbuff[i]);
				goto err_free_rx_ring;
		}
		FUNC10(lp->rx_skbuff[i],2);
	}
        /* Initilaizing receive descriptors */
	for (i = 0; i < NUM_RX_BUFFERS; i++) {
		lp->rx_dma_addr[i] = FUNC9(lp->pci_dev,
			lp->rx_skbuff[i]->data,lp->rx_buff_len-2, PCI_DMA_FROMDEVICE);

		lp->rx_ring[i].buff_phy_addr = FUNC3(lp->rx_dma_addr[i]);
		lp->rx_ring[i].buff_count = FUNC2(lp->rx_buff_len-2);
		FUNC11();
		lp->rx_ring[i].rx_flags = FUNC2(OWN_BIT);
	}

	/* Initializing transmit descriptors */
	for (i = 0; i < NUM_TX_RING_DR; i++) {
		lp->tx_ring[i].buff_phy_addr = 0;
		lp->tx_ring[i].tx_flags = 0;
		lp->tx_ring[i].buff_count = 0;
	}

	return 0;

err_free_rx_ring:

	FUNC8(lp->pci_dev,
		sizeof(struct amd8111e_rx_dr)*NUM_RX_RING_DR,lp->rx_ring,
		lp->rx_ring_dma_addr);

err_free_tx_ring:

	FUNC8(lp->pci_dev,
		 sizeof(struct amd8111e_tx_dr)*NUM_TX_RING_DR,lp->tx_ring,
		 lp->tx_ring_dma_addr);

err_no_mem:
	return -ENOMEM;
}