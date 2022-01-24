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
struct virtnet_info {unsigned int hdr_len; scalar_t__ mergeable_rx_bufs; } ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct receive_queue {int /*<<< orphan*/  napi; } ;
struct page {scalar_t__ private; } ;
struct padded_vnet_hdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr_frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GOOD_COPY_LEN ; 
 unsigned int MAX_SKB_FRAGS ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct receive_queue*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_net_hdr_mrg_rxbuf*,char*,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,char*,unsigned int) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 struct virtio_net_hdr_mrg_rxbuf* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC15(struct virtnet_info *vi,
				   struct receive_queue *rq,
				   struct page *page, unsigned int offset,
				   unsigned int len, unsigned int truesize,
				   bool hdr_valid)
{
	struct sk_buff *skb;
	struct virtio_net_hdr_mrg_rxbuf *hdr;
	unsigned int copy, hdr_len, hdr_padded_len;
	char *p;

	p = FUNC7(page) + offset;

	/* copy small packet so we can reuse these pages for small data */
	skb = FUNC5(&rq->napi, GOOD_COPY_LEN);
	if (FUNC14(!skb))
		return NULL;

	hdr = FUNC13(skb);

	hdr_len = vi->hdr_len;
	if (vi->mergeable_rx_bufs)
		hdr_padded_len = sizeof(*hdr);
	else
		hdr_padded_len = sizeof(struct padded_vnet_hdr);

	if (hdr_valid)
		FUNC3(hdr, p, hdr_len);

	len -= hdr_len;
	offset += hdr_padded_len;
	p += hdr_padded_len;

	copy = len;
	if (copy > FUNC12(skb))
		copy = FUNC12(skb);
	FUNC10(skb, p, copy);

	len -= copy;
	offset += copy;

	if (vi->mergeable_rx_bufs) {
		if (len)
			FUNC9(skb, 0, page, offset, len, truesize);
		else
			FUNC8(page);
		return skb;
	}

	/*
	 * Verify that we can indeed put this data into a skb.
	 * This is here to handle cases when the device erroneously
	 * tries to receive more than is possible. This is usually
	 * the case of a broken device.
	 */
	if (FUNC14(len > MAX_SKB_FRAGS * PAGE_SIZE)) {
		FUNC6("%s: too much data\n", skb->dev->name);
		FUNC1(skb);
		return NULL;
	}
	FUNC0(offset >= PAGE_SIZE);
	while (len) {
		unsigned int frag_size = FUNC4((unsigned)PAGE_SIZE - offset, len);
		FUNC9(skb, FUNC11(skb)->nr_frags, page, offset,
				frag_size, truesize);
		len -= frag_size;
		page = (struct page *)page->private;
		offset = 0;
	}

	if (page)
		FUNC2(rq, page);

	return skb;
}