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
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct sk_buff {int /*<<< orphan*/ * data_len; struct ena_rx_buffer* len; int /*<<< orphan*/  protocol; } ;
struct ena_rx_buffer {int page_offset; int /*<<< orphan*/ * page; int /*<<< orphan*/  ena_buf; } ;
struct ena_ring {size_t rx_copybreak; size_t* free_ids; struct ena_rx_buffer* rx_buffer_info; int /*<<< orphan*/  ring_size; int /*<<< orphan*/  netdev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  dev; } ;
struct ena_com_rx_buf_info {size_t len; size_t req_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ENA_PAGE_SIZE ; 
 size_t FUNC0 (size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct ena_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ena_rx_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  paddr ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,size_t) ; 
 TYPE_1__* FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC18(struct ena_ring *rx_ring,
				  struct ena_com_rx_buf_info *ena_bufs,
				  u32 descs,
				  u16 *next_to_clean)
{
	struct sk_buff *skb;
	struct ena_rx_buffer *rx_info;
	u16 len, req_id, buf = 0;
	void *va;

	len = ena_bufs[buf].len;
	req_id = ena_bufs[buf].req_id;
	rx_info = &rx_ring->rx_buffer_info[req_id];

	if (FUNC17(!rx_info->page)) {
		FUNC10(rx_ring->adapter, rx_err, rx_ring->netdev,
			  "Page is NULL\n");
		return NULL;
	}

	FUNC9(rx_ring->adapter, rx_status, rx_ring->netdev,
		  "rx_info %p page %p\n",
		  rx_info, rx_info->page);

	/* save virt address of first buffer */
	va = FUNC11(rx_info->page) + rx_info->page_offset;
	FUNC12(va + NET_IP_ALIGN);

	if (len <= rx_ring->rx_copybreak) {
		skb = FUNC6(rx_ring, false);
		if (FUNC17(!skb))
			return NULL;

		FUNC9(rx_ring->adapter, rx_status, rx_ring->netdev,
			  "rx allocated small packet. len %d. data_len %d\n",
			  skb->len, skb->data_len);

		/* sync this buffer for CPU use */
		FUNC2(rx_ring->dev,
					FUNC4(&rx_info->ena_buf, paddr),
					len,
					DMA_FROM_DEVICE);
		FUNC14(skb, va, len);
		FUNC3(rx_ring->dev,
					   FUNC4(&rx_info->ena_buf, paddr),
					   len,
					   DMA_FROM_DEVICE);

		FUNC15(skb, len);
		skb->protocol = FUNC7(skb, rx_ring->netdev);
		rx_ring->free_ids[*next_to_clean] = req_id;
		*next_to_clean = FUNC0(*next_to_clean, descs,
						     rx_ring->ring_size);
		return skb;
	}

	skb = FUNC6(rx_ring, true);
	if (FUNC17(!skb))
		return NULL;

	do {
		FUNC5(rx_ring->dev,
			       FUNC4(&rx_info->ena_buf, paddr),
			       ENA_PAGE_SIZE, DMA_FROM_DEVICE);

		FUNC13(skb, FUNC16(skb)->nr_frags, rx_info->page,
				rx_info->page_offset, len, ENA_PAGE_SIZE);

		FUNC9(rx_ring->adapter, rx_status, rx_ring->netdev,
			  "rx skb updated. len %d. data_len %d\n",
			  skb->len, skb->data_len);

		rx_info->page = NULL;

		rx_ring->free_ids[*next_to_clean] = req_id;
		*next_to_clean =
			FUNC1(*next_to_clean,
					     rx_ring->ring_size);
		if (FUNC8(--descs == 0))
			break;

		buf++;
		len = ena_bufs[buf].len;
		req_id = ena_bufs[buf].req_id;
		rx_info = &rx_ring->rx_buffer_info[req_id];
	} while (1);

	return skb;
}