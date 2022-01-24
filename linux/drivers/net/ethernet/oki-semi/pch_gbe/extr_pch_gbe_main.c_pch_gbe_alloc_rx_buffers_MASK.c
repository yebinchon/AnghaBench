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
struct sk_buff {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pch_gbe_rx_ring {unsigned int next_to_use; unsigned int count; scalar_t__ dma; struct pch_gbe_buffer* buffer_info; } ;
struct pch_gbe_rx_desc {int /*<<< orphan*/  gbec_status; scalar_t__ buffer_addr; } ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_buffer {int mapped; int /*<<< orphan*/  length; scalar_t__ dma; struct sk_buff* skb; int /*<<< orphan*/  rx_buffer; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_alloc_buff_failed; } ;
struct pch_gbe_adapter {unsigned int rx_buffer_len; TYPE_1__ stats; struct pci_dev* pdev; struct pch_gbe_hw hw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  RX_DSC_SW_P; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DSC_INIT16 ; 
 unsigned int NET_IP_ALIGN ; 
 struct pch_gbe_rx_desc* FUNC0 (struct pch_gbe_rx_ring,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 struct sk_buff* FUNC6 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,unsigned int,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(struct pch_gbe_adapter *adapter,
			 struct pch_gbe_rx_ring *rx_ring, int cleaned_count)
{
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	struct pch_gbe_hw *hw = &adapter->hw;
	struct pch_gbe_rx_desc *rx_desc;
	struct pch_gbe_buffer *buffer_info;
	struct sk_buff *skb;
	unsigned int i;
	unsigned int bufsz;

	bufsz = adapter->rx_buffer_len + NET_IP_ALIGN;
	i = rx_ring->next_to_use;

	while ((cleaned_count--)) {
		buffer_info = &rx_ring->buffer_info[i];
		skb = FUNC6(netdev, bufsz);
		if (FUNC9(!skb)) {
			/* Better luck next round */
			adapter->stats.rx_alloc_buff_failed++;
			break;
		}
		/* align */
		FUNC8(skb, NET_IP_ALIGN);
		buffer_info->skb = skb;

		buffer_info->dma = FUNC2(&pdev->dev,
						  buffer_info->rx_buffer,
						  buffer_info->length,
						  DMA_FROM_DEVICE);
		if (FUNC3(&adapter->pdev->dev, buffer_info->dma)) {
			FUNC1(skb);
			buffer_info->skb = NULL;
			buffer_info->dma = 0;
			adapter->stats.rx_alloc_buff_failed++;
			break; /* while !buffer_info->skb */
		}
		buffer_info->mapped = true;
		rx_desc = FUNC0(*rx_ring, i);
		rx_desc->buffer_addr = (buffer_info->dma);
		rx_desc->gbec_status = DSC_INIT16;

		FUNC7(netdev,
			   "i = %d  buffer_info->dma = 0x08%llx  buffer_info->length = 0x%x\n",
			   i, (unsigned long long)buffer_info->dma,
			   buffer_info->length);

		if (FUNC9(++i == rx_ring->count))
			i = 0;
	}
	if (FUNC5(rx_ring->next_to_use != i)) {
		rx_ring->next_to_use = i;
		if (FUNC9(i-- == 0))
			i = (rx_ring->count - 1);
		FUNC4(rx_ring->dma +
			  (int)sizeof(struct pch_gbe_rx_desc) * i,
			  &hw->reg->RX_DSC_SW_P);
	}
	return;
}