#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union gve_tx_desc {int dummy; } gve_tx_desc ;
typedef  size_t u32 ;
struct sk_buff {int len; } ;
struct TYPE_6__ {TYPE_1__* qpl; scalar_t__ base; } ;
struct gve_tx_ring {size_t req; size_t mask; TYPE_2__ tx_fifo; union gve_tx_desc* desc; struct gve_tx_buffer_state* info; } ;
struct gve_tx_buffer_state {TYPE_4__* iov; struct sk_buff* skb; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int iov_len; scalar_t__ iov_offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  page_buses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC2 (TYPE_2__*,int,TYPE_4__*) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (union gve_tx_desc*,struct sk_buff*,int,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (union gve_tx_desc*,struct sk_buff*,int,int,scalar_t__) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int,scalar_t__,int) ; 
 int FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct gve_tx_ring *tx, struct sk_buff *skb,
			  struct device *dev)
{
	int pad_bytes, hlen, hdr_nfrags, payload_nfrags, l4_hdr_offset;
	union gve_tx_desc *pkt_desc, *seg_desc;
	struct gve_tx_buffer_state *info;
	bool is_gso = FUNC9(skb);
	u32 idx = tx->req & tx->mask;
	int payload_iov = 2;
	int copy_offset;
	u32 next_idx;
	int i;

	info = &tx->info[idx];
	pkt_desc = &tx->desc[idx];

	l4_hdr_offset = FUNC6(skb);
	/* If the skb is gso, then we want the tcp header in the first segment
	 * otherwise we want the linear portion of the skb (which will contain
	 * the checksum because skb->csum_start and skb->csum_offset are given
	 * relative to skb->head) in the first segment.
	 */
	hlen = is_gso ? l4_hdr_offset + FUNC10(skb) :
			FUNC8(skb);

	info->skb =  skb;
	/* We don't want to split the header, so if necessary, pad to the end
	 * of the fifo and then put the header at the beginning of the fifo.
	 */
	pad_bytes = FUNC3(&tx->tx_fifo, hlen);
	hdr_nfrags = FUNC2(&tx->tx_fifo, hlen + pad_bytes,
				       &info->iov[0]);
	FUNC0(!hdr_nfrags, "hdr_nfrags should never be 0!");
	payload_nfrags = FUNC2(&tx->tx_fifo, skb->len - hlen,
					   &info->iov[payload_iov]);

	FUNC4(pkt_desc, skb, is_gso, l4_hdr_offset,
			     1 + payload_nfrags, hlen,
			     info->iov[hdr_nfrags - 1].iov_offset);

	FUNC7(skb, 0,
		      tx->tx_fifo.base + info->iov[hdr_nfrags - 1].iov_offset,
		      hlen);
	FUNC1(dev, tx->tx_fifo.qpl->page_buses,
				info->iov[hdr_nfrags - 1].iov_offset,
				info->iov[hdr_nfrags - 1].iov_len);
	copy_offset = hlen;

	for (i = payload_iov; i < payload_nfrags + payload_iov; i++) {
		next_idx = (tx->req + 1 + i - payload_iov) & tx->mask;
		seg_desc = &tx->desc[next_idx];

		FUNC5(seg_desc, skb, is_gso,
				     info->iov[i].iov_len,
				     info->iov[i].iov_offset);

		FUNC7(skb, copy_offset,
			      tx->tx_fifo.base + info->iov[i].iov_offset,
			      info->iov[i].iov_len);
		FUNC1(dev, tx->tx_fifo.qpl->page_buses,
					info->iov[i].iov_offset,
					info->iov[i].iov_len);
		copy_offset += info->iov[i].iov_len;
	}

	return 1 + payload_nfrags;
}