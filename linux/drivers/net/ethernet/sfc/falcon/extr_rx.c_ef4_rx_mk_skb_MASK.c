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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int data; int len; int data_len; unsigned int truesize; int /*<<< orphan*/  protocol; } ;
struct ef4_rx_buffer {int len; int page_offset; int /*<<< orphan*/ * page; } ;
struct ef4_nic {int rx_ip_align; int rx_prefix_size; unsigned int rx_buffer_truesize; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  rx_buffer_order; int /*<<< orphan*/  n_rx_noskb_drops; } ;
struct ef4_channel {int /*<<< orphan*/  napi_str; int /*<<< orphan*/  rx_queue; struct ef4_nic* efx; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ef4_rx_buffer* FUNC4 (int /*<<< orphan*/ *,struct ef4_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct ef4_channel *channel,
				     struct ef4_rx_buffer *rx_buf,
				     unsigned int n_frags,
				     u8 *eh, int hdr_len)
{
	struct ef4_nic *efx = channel->efx;
	struct sk_buff *skb;

	/* Allocate an SKB to store the headers */
	skb = FUNC7(efx->net_dev,
			       efx->rx_ip_align + efx->rx_prefix_size +
			       hdr_len);
	if (FUNC12(skb == NULL)) {
		FUNC3(&efx->n_rx_noskb_drops);
		return NULL;
	}

	FUNC0(rx_buf->len < hdr_len);

	FUNC6(skb->data + efx->rx_ip_align, eh - efx->rx_prefix_size,
	       efx->rx_prefix_size + hdr_len);
	FUNC10(skb, efx->rx_ip_align + efx->rx_prefix_size);
	FUNC2(skb, hdr_len);

	/* Append the remaining page(s) onto the frag list */
	if (rx_buf->len > hdr_len) {
		rx_buf->page_offset += hdr_len;
		rx_buf->len -= hdr_len;

		for (;;) {
			FUNC8(skb, FUNC11(skb)->nr_frags,
					   rx_buf->page, rx_buf->page_offset,
					   rx_buf->len);
			rx_buf->page = NULL;
			skb->len += rx_buf->len;
			skb->data_len += rx_buf->len;
			if (FUNC11(skb)->nr_frags == n_frags)
				break;

			rx_buf = FUNC4(&channel->rx_queue, rx_buf);
		}
	} else {
		FUNC1(rx_buf->page, efx->rx_buffer_order);
		rx_buf->page = NULL;
		n_frags = 0;
	}

	skb->truesize += n_frags * efx->rx_buffer_truesize;

	/* Move past the ethernet header */
	skb->protocol = FUNC5(skb, efx->net_dev);

	FUNC9(skb, &channel->napi_str);

	return skb;
}