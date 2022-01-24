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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; struct ixgb_rx_desc* data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct ixgb_rx_desc {int status; int errors; scalar_t__ special; scalar_t__ length; scalar_t__ dma; struct sk_buff* skb; } ;
struct ixgb_desc_ring {unsigned int next_to_clean; unsigned int count; struct ixgb_rx_desc* buffer_info; } ;
struct ixgb_buffer {int status; int errors; scalar_t__ special; scalar_t__ length; scalar_t__ dma; struct sk_buff* skb; } ;
struct ixgb_adapter {int /*<<< orphan*/  napi; struct pci_dev* pdev; struct net_device* netdev; struct ixgb_desc_ring rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int FUNC0 (struct ixgb_desc_ring*) ; 
 int IXGB_RX_BUFFER_WRITE ; 
 struct ixgb_rx_desc* FUNC1 (struct ixgb_desc_ring,unsigned int) ; 
 int IXGB_RX_DESC_ERRORS_CE ; 
 int IXGB_RX_DESC_ERRORS_P ; 
 int IXGB_RX_DESC_ERRORS_RXE ; 
 int IXGB_RX_DESC_ERRORS_SE ; 
 int IXGB_RX_DESC_STATUS_DD ; 
 int IXGB_RX_DESC_STATUS_EOP ; 
 int IXGB_RX_DESC_STATUS_VP ; 
 struct ixgb_rx_desc* NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct ixgb_rx_desc*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgb_adapter*,struct ixgb_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgb_rx_desc*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static bool
FUNC17(struct ixgb_adapter *adapter, int *work_done, int work_to_do)
{
	struct ixgb_desc_ring *rx_ring = &adapter->rx_ring;
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	struct ixgb_rx_desc *rx_desc, *next_rxd;
	struct ixgb_buffer *buffer_info, *next_buffer, *next2_buffer;
	u32 length;
	unsigned int i, j;
	int cleaned_count = 0;
	bool cleaned = false;

	i = rx_ring->next_to_clean;
	rx_desc = FUNC1(*rx_ring, i);
	buffer_info = &rx_ring->buffer_info[i];

	while (rx_desc->status & IXGB_RX_DESC_STATUS_DD) {
		struct sk_buff *skb;
		u8 status;

		if (*work_done >= work_to_do)
			break;

		(*work_done)++;
		FUNC14();	/* read descriptor and rx_buffer_info after status DD */
		status = rx_desc->status;
		skb = buffer_info->skb;
		buffer_info->skb = NULL;

		FUNC13(skb->data - NET_IP_ALIGN);

		if (++i == rx_ring->count)
			i = 0;
		next_rxd = FUNC1(*rx_ring, i);
		FUNC13(next_rxd);

		j = i + 1;
		if (j == rx_ring->count)
			j = 0;
		next2_buffer = &rx_ring->buffer_info[j];
		FUNC13(next2_buffer);

		next_buffer = &rx_ring->buffer_info[i];

		cleaned = true;
		cleaned_count++;

		FUNC4(&pdev->dev,
				 buffer_info->dma,
				 buffer_info->length,
				 DMA_FROM_DEVICE);
		buffer_info->dma = 0;

		length = FUNC10(rx_desc->length);
		rx_desc->length = 0;

		if (FUNC16(!(status & IXGB_RX_DESC_STATUS_EOP))) {

			/* All receives must fit into a single buffer */

			FUNC12("Receive packet consumed multiple buffers length<%x>\n",
				 length);

			FUNC3(skb);
			goto rxdesc_done;
		}

		if (FUNC16(rx_desc->errors &
		    (IXGB_RX_DESC_ERRORS_CE | IXGB_RX_DESC_ERRORS_SE |
		     IXGB_RX_DESC_ERRORS_P | IXGB_RX_DESC_ERRORS_RXE))) {
			FUNC3(skb);
			goto rxdesc_done;
		}

		FUNC8(&adapter->napi, buffer_info, length, &skb);

		/* Good Receive */
		FUNC15(skb, length);

		/* Receive Checksum Offload */
		FUNC9(adapter, rx_desc, skb);

		skb->protocol = FUNC5(skb, netdev);
		if (status & IXGB_RX_DESC_STATUS_VP)
			FUNC2(skb, FUNC6(ETH_P_8021Q),
				       FUNC10(rx_desc->special));

		FUNC11(skb);

rxdesc_done:
		/* clean up descriptor, might be written over by hw */
		rx_desc->status = 0;

		/* return some buffers to hardware, one at a time is too slow */
		if (FUNC16(cleaned_count >= IXGB_RX_BUFFER_WRITE)) {
			FUNC7(adapter, cleaned_count);
			cleaned_count = 0;
		}

		/* use prefetched values */
		rx_desc = next_rxd;
		buffer_info = next_buffer;
	}

	rx_ring->next_to_clean = i;

	cleaned_count = FUNC0(rx_ring);
	if (cleaned_count)
		FUNC7(adapter, cleaned_count);

	return cleaned;
}