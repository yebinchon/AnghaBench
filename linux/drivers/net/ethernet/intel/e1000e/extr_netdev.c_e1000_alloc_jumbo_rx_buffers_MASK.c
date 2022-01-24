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
struct TYPE_2__ {int /*<<< orphan*/  buffer_addr; } ;
union e1000_rx_desc_extended {TYPE_1__ read; } ;
struct sk_buff {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct e1000_ring {unsigned int next_to_use; unsigned int count; int /*<<< orphan*/  tail; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_buffer {scalar_t__ dma; scalar_t__ page; struct sk_buff* skb; } ;
struct e1000_adapter {int flags2; int /*<<< orphan*/  alloc_rx_buff_failed; struct pci_dev* pdev; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 union e1000_rx_desc_extended* FUNC0 (struct e1000_ring,unsigned int) ; 
 int FLAG2_PCIM2PCI_ARBITER_WA ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct sk_buff* FUNC1 (struct net_device*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_ring*,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct e1000_ring *rx_ring,
					 int cleaned_count, gfp_t gfp)
{
	struct e1000_adapter *adapter = rx_ring->adapter;
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	union e1000_rx_desc_extended *rx_desc;
	struct e1000_buffer *buffer_info;
	struct sk_buff *skb;
	unsigned int i;
	unsigned int bufsz = 256 - 16;	/* for skb_reserve */

	i = rx_ring->next_to_use;
	buffer_info = &rx_ring->buffer_info[i];

	while (cleaned_count--) {
		skb = buffer_info->skb;
		if (skb) {
			FUNC8(skb, 0);
			goto check_page;
		}

		skb = FUNC1(netdev, bufsz, gfp);
		if (FUNC9(!skb)) {
			/* Better luck next round */
			adapter->alloc_rx_buff_failed++;
			break;
		}

		buffer_info->skb = skb;
check_page:
		/* allocate a new page if necessary */
		if (!buffer_info->page) {
			buffer_info->page = FUNC2(gfp);
			if (FUNC9(!buffer_info->page)) {
				adapter->alloc_rx_buff_failed++;
				break;
			}
		}

		if (!buffer_info->dma) {
			buffer_info->dma = FUNC4(&pdev->dev,
							buffer_info->page, 0,
							PAGE_SIZE,
							DMA_FROM_DEVICE);
			if (FUNC5(&pdev->dev, buffer_info->dma)) {
				adapter->alloc_rx_buff_failed++;
				break;
			}
		}

		rx_desc = FUNC0(*rx_ring, i);
		rx_desc->read.buffer_addr = FUNC3(buffer_info->dma);

		if (FUNC9(++i == rx_ring->count))
			i = 0;
		buffer_info = &rx_ring->buffer_info[i];
	}

	if (FUNC7(rx_ring->next_to_use != i)) {
		rx_ring->next_to_use = i;
		if (FUNC9(i-- == 0))
			i = (rx_ring->count - 1);

		/* Force memory writes to complete before letting h/w
		 * know there are new descriptors to fetch.  (Only
		 * applicable for weak-ordered memory model archs,
		 * such as IA-64).
		 */
		FUNC10();
		if (adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
			FUNC6(rx_ring, i);
		else
			FUNC11(i, rx_ring->tail);
	}
}