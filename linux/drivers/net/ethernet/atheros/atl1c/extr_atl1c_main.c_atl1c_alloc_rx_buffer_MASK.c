#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u16 ;
struct sk_buff {void* data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct atl1c_rx_free_desc {int /*<<< orphan*/  buffer_addr; } ;
struct atl1c_rfd_ring {size_t next_to_use; size_t count; struct atl1c_buffer* buffer_info; } ;
struct atl1c_buffer {int flags; int /*<<< orphan*/  dma; scalar_t__ length; struct sk_buff* skb; } ;
struct atl1c_adapter {int /*<<< orphan*/  hw; int /*<<< orphan*/  netdev; scalar_t__ rx_buffer_len; struct pci_dev* pdev; struct atl1c_rfd_ring rfd_ring; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ATL1C_BUFFER_BUSY ; 
 int ATL1C_BUFFER_FREE ; 
 int /*<<< orphan*/  ATL1C_PCIMAP_FROMDEVICE ; 
 int /*<<< orphan*/  ATL1C_PCIMAP_SINGLE ; 
 struct atl1c_rx_free_desc* FUNC0 (struct atl1c_rfd_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int MB_RFDX_PROD_IDX_MASK ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  REG_MB_RFD0_PROD_IDX ; 
 struct sk_buff* FUNC4 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct atl1c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_err ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(struct atl1c_adapter *adapter)
{
	struct atl1c_rfd_ring *rfd_ring = &adapter->rfd_ring;
	struct pci_dev *pdev = adapter->pdev;
	struct atl1c_buffer *buffer_info, *next_info;
	struct sk_buff *skb;
	void *vir_addr = NULL;
	u16 num_alloc = 0;
	u16 rfd_next_to_use, next_next;
	struct atl1c_rx_free_desc *rfd_desc;
	dma_addr_t mapping;

	next_next = rfd_next_to_use = rfd_ring->next_to_use;
	if (++next_next == rfd_ring->count)
		next_next = 0;
	buffer_info = &rfd_ring->buffer_info[rfd_next_to_use];
	next_info = &rfd_ring->buffer_info[next_next];

	while (next_info->flags & ATL1C_BUFFER_FREE) {
		rfd_desc = FUNC0(rfd_ring, rfd_next_to_use);

		skb = FUNC4(adapter);
		if (FUNC12(!skb)) {
			if (FUNC8(adapter))
				FUNC7(&pdev->dev, "alloc rx buffer failed\n");
			break;
		}

		/*
		 * Make buffer alignment 2 beyond a 16 byte boundary
		 * this will result in a 16 byte aligned IP header after
		 * the 14 byte MAC header is removed
		 */
		vir_addr = skb->data;
		FUNC1(buffer_info, ATL1C_BUFFER_BUSY);
		buffer_info->skb = skb;
		buffer_info->length = adapter->rx_buffer_len;
		mapping = FUNC11(pdev, vir_addr,
						buffer_info->length,
						PCI_DMA_FROMDEVICE);
		if (FUNC12(FUNC10(pdev, mapping))) {
			FUNC6(skb);
			buffer_info->skb = NULL;
			buffer_info->length = 0;
			FUNC1(buffer_info, ATL1C_BUFFER_FREE);
			FUNC9(adapter, rx_err, adapter->netdev, "RX pci_map_single failed");
			break;
		}
		buffer_info->dma = mapping;
		FUNC2(buffer_info, ATL1C_PCIMAP_SINGLE,
			ATL1C_PCIMAP_FROMDEVICE);
		rfd_desc->buffer_addr = FUNC5(buffer_info->dma);
		rfd_next_to_use = next_next;
		if (++next_next == rfd_ring->count)
			next_next = 0;
		buffer_info = &rfd_ring->buffer_info[rfd_next_to_use];
		next_info = &rfd_ring->buffer_info[next_next];
		num_alloc++;
	}

	if (num_alloc) {
		/* TODO: update mailbox here */
		FUNC13();
		rfd_ring->next_to_use = rfd_next_to_use;
		FUNC3(&adapter->hw, REG_MB_RFD0_PROD_IDX,
			rfd_ring->next_to_use & MB_RFDX_PROD_IDX_MASK);
	}

	return num_alloc;
}