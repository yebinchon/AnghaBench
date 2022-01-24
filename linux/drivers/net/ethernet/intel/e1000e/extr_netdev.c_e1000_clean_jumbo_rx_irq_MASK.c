#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  status_error; int /*<<< orphan*/  vlan; int /*<<< orphan*/  length; } ;
struct TYPE_5__ {int /*<<< orphan*/  rss; } ;
struct TYPE_6__ {TYPE_1__ hi_dword; } ;
struct TYPE_8__ {TYPE_3__ upper; TYPE_2__ lower; } ;
union e1000_rx_desc_extended {TYPE_4__ wb; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct skb_shared_info {int /*<<< orphan*/  nr_frags; } ;
struct sk_buff {scalar_t__ len; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int features; } ;
struct e1000_ring {unsigned int next_to_clean; unsigned int count; struct sk_buff* rx_skb_top; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_buffer {int /*<<< orphan*/  page; struct sk_buff* skb; scalar_t__ dma; } ;
struct e1000_adapter {unsigned int total_rx_bytes; unsigned int total_rx_packets; int /*<<< orphan*/  (* alloc_rx_buf ) (struct e1000_ring*,int,int /*<<< orphan*/ ) ;struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int E1000_RXDEXT_ERR_FRAME_ERR_MASK ; 
 int E1000_RXD_STAT_DD ; 
 int E1000_RXD_STAT_EOP ; 
 int E1000_RX_BUFFER_WRITE ; 
 union e1000_rx_desc_extended* FUNC0 (struct e1000_ring,unsigned int) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETIF_F_RXALL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int copybreak ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_buffer*,struct sk_buff*,int) ; 
 int FUNC6 (struct e1000_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*,struct net_device*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_adapter*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (union e1000_rx_desc_extended*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* rxtop ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 struct skb_shared_info* FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct e1000_ring*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct e1000_ring*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static bool FUNC26(struct e1000_ring *rx_ring, int *work_done,
				     int work_to_do)
{
	struct e1000_adapter *adapter = rx_ring->adapter;
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	union e1000_rx_desc_extended *rx_desc, *next_rxd;
	struct e1000_buffer *buffer_info, *next_buffer;
	u32 length, staterr;
	unsigned int i;
	int cleaned_count = 0;
	bool cleaned = false;
	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
	struct skb_shared_info *shinfo;

	i = rx_ring->next_to_clean;
	rx_desc = FUNC0(*rx_ring, i);
	staterr = FUNC14(rx_desc->wb.upper.status_error);
	buffer_info = &rx_ring->buffer_info[i];

	while (staterr & E1000_RXD_STAT_DD) {
		struct sk_buff *skb;

		if (*work_done >= work_to_do)
			break;
		(*work_done)++;
		FUNC3();	/* read descriptor and rx_buffer_info after status DD */

		skb = buffer_info->skb;
		buffer_info->skb = NULL;

		++i;
		if (i == rx_ring->count)
			i = 0;
		next_rxd = FUNC0(*rx_ring, i);
		FUNC16(next_rxd);

		next_buffer = &rx_ring->buffer_info[i];

		cleaned = true;
		cleaned_count++;
		FUNC4(&pdev->dev, buffer_info->dma, PAGE_SIZE,
			       DMA_FROM_DEVICE);
		buffer_info->dma = 0;

		length = FUNC13(rx_desc->wb.upper.length);

		/* errors is only valid for DD + EOP descriptors */
		if (FUNC25((staterr & E1000_RXD_STAT_EOP) &&
			     ((staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) &&
			      !(netdev->features & NETIF_F_RXALL)))) {
			/* recycle both page and skb */
			buffer_info->skb = skb;
			/* an error means any chain goes out the window too */
			if (rx_ring->rx_skb_top)
				FUNC2(rx_ring->rx_skb_top);
			rx_ring->rx_skb_top = NULL;
			goto next_desc;
		}
#define rxtop (rx_ring->rx_skb_top)
		if (!(staterr & E1000_RXD_STAT_EOP)) {
			/* this descriptor is only the beginning (or middle) */
			if (!rxtop) {
				/* this is the beginning of a chain */
				rxtop = skb;
				FUNC18(rxtop, 0, buffer_info->page,
						   0, length);
			} else {
				/* this is the middle of a chain */
				shinfo = FUNC20(rxtop);
				FUNC18(rxtop, shinfo->nr_frags,
						   buffer_info->page, 0,
						   length);
				/* re-use the skb, only consumed the page */
				buffer_info->skb = skb;
			}
			FUNC5(buffer_info, rxtop, length);
			goto next_desc;
		} else {
			if (rxtop) {
				/* end of the chain */
				shinfo = FUNC20(rxtop);
				FUNC18(rxtop, shinfo->nr_frags,
						   buffer_info->page, 0,
						   length);
				/* re-use the current skb, we only consumed the
				 * page
				 */
				buffer_info->skb = skb;
				skb = rxtop;
				rxtop = NULL;
				FUNC5(buffer_info, skb, length);
			} else {
				/* no chain, got EOP, this buf is the packet
				 * copybreak to save the put_page/alloc_page
				 */
				if (length <= copybreak &&
				    FUNC22(skb) >= length) {
					u8 *vaddr;
					vaddr = FUNC11(buffer_info->page);
					FUNC15(FUNC21(skb), vaddr,
					       length);
					FUNC12(vaddr);
					/* re-use the page, so don't erase
					 * buffer_info->page
					 */
					FUNC19(skb, length);
				} else {
					FUNC18(skb, 0,
							   buffer_info->page, 0,
							   length);
					FUNC5(buffer_info, skb,
							   length);
				}
			}
		}

		/* Receive Checksum Offload */
		FUNC8(adapter, staterr, skb);

		FUNC9(netdev, rx_desc->wb.lower.hi_dword.rss, skb);

		/* probably a little skewed due to removing CRC */
		total_rx_bytes += skb->len;
		total_rx_packets++;

		/* eth type trans needs skb->data to point to something */
		if (!FUNC17(skb, ETH_HLEN)) {
			FUNC10("pskb_may_pull failed.\n");
			FUNC2(skb);
			goto next_desc;
		}

		FUNC7(adapter, netdev, skb, staterr,
				  rx_desc->wb.upper.vlan);

next_desc:
		rx_desc->wb.upper.status_error &= FUNC1(~0xFF);

		/* return some buffers to hardware, one at a time is too slow */
		if (FUNC25(cleaned_count >= E1000_RX_BUFFER_WRITE)) {
			adapter->alloc_rx_buf(rx_ring, cleaned_count,
					      GFP_ATOMIC);
			cleaned_count = 0;
		}

		/* use prefetched values */
		rx_desc = next_rxd;
		buffer_info = next_buffer;

		staterr = FUNC14(rx_desc->wb.upper.status_error);
	}
	rx_ring->next_to_clean = i;

	cleaned_count = FUNC6(rx_ring);
	if (cleaned_count)
		adapter->alloc_rx_buf(rx_ring, cleaned_count, GFP_ATOMIC);

	adapter->total_rx_bytes += total_rx_bytes;
	adapter->total_rx_packets += total_rx_packets;
	return cleaned;
}