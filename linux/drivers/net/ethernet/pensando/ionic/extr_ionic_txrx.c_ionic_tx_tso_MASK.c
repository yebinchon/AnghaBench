#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
typedef  unsigned int u16 ;
struct sk_buff {unsigned int len; int encapsulation; unsigned int data; } ;
struct ionic_txq_sg_elem {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct ionic_txq_desc {int dummy; } ;
struct ionic_tx_stats {int /*<<< orphan*/  tso; int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; int /*<<< orphan*/  frags; } ;
struct ionic_queue {struct ionic_desc_info* head; TYPE_2__* lif; } ;
struct ionic_desc_info {scalar_t__ desc; struct ionic_desc_info* next; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {unsigned int gso_size; unsigned int nr_frags; int gso_type; int /*<<< orphan*/ * frags; } ;
struct TYPE_5__ {TYPE_1__* ionic; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int SKB_GSO_GRE_CSUM ; 
 int SKB_GSO_UDP_TUNNEL_CSUM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_queue*,struct ionic_desc_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ionic_queue*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ionic_queue*,unsigned int,unsigned int) ; 
 int FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 struct ionic_txq_desc* FUNC9 (struct ionic_queue*,struct ionic_txq_sg_elem**) ; 
 int /*<<< orphan*/  FUNC10 (struct ionic_queue*,struct ionic_txq_desc*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int,unsigned int,int,unsigned int,int,int,int) ; 
 unsigned int FUNC11 (unsigned int,unsigned int) ; 
 struct ionic_tx_stats* FUNC12 (struct ionic_queue*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC14 (struct sk_buff*) ; 
 unsigned int FUNC15 (struct sk_buff*) ; 
 TYPE_3__* FUNC16 (struct sk_buff*) ; 
 unsigned int FUNC17 (struct sk_buff*) ; 
 unsigned int FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 unsigned int FUNC20 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC21(struct ionic_queue *q, struct sk_buff *skb)
{
	struct ionic_tx_stats *stats = FUNC12(q);
	struct ionic_desc_info *abort = q->head;
	struct device *dev = q->lif->ionic->dev;
	struct ionic_desc_info *rewind = abort;
	struct ionic_txq_sg_elem *elem;
	struct ionic_txq_desc *desc;
	unsigned int frag_left = 0;
	unsigned int offset = 0;
	unsigned int len_left;
	dma_addr_t desc_addr;
	unsigned int hdrlen;
	unsigned int nfrags;
	unsigned int seglen;
	u64 total_bytes = 0;
	u64 total_pkts = 0;
	unsigned int left;
	unsigned int len;
	unsigned int mss;
	skb_frag_t *frag;
	bool start, done;
	bool outer_csum;
	bool has_vlan;
	u16 desc_len;
	u8 desc_nsge;
	u16 vlan_tci;
	bool encap;
	int err;

	mss = FUNC16(skb)->gso_size;
	nfrags = FUNC16(skb)->nr_frags;
	len_left = skb->len - FUNC14(skb);
	outer_csum = (FUNC16(skb)->gso_type & SKB_GSO_GRE_CSUM) ||
		     (FUNC16(skb)->gso_type & SKB_GSO_UDP_TUNNEL_CSUM);
	has_vlan = !!FUNC19(skb);
	vlan_tci = FUNC18(skb);
	encap = skb->encapsulation;

	/* Preload inner-most TCP csum field with IP pseudo hdr
	 * calculated with IP length set to zero.  HW will later
	 * add in length to each TCP segment resulting from the TSO.
	 */

	if (encap)
		err = FUNC7(skb);
	else
		err = FUNC8(skb);
	if (err)
		return err;

	if (encap)
		hdrlen = FUNC15(skb) - skb->data +
			 FUNC3(skb);
	else
		hdrlen = FUNC17(skb) + FUNC20(skb);

	seglen = hdrlen + mss;
	left = FUNC14(skb);

	desc = FUNC9(q, &elem);
	start = true;

	/* Chop skb->data up into desc segments */

	while (left > 0) {
		len = FUNC11(seglen, left);
		frag_left = seglen - len;
		desc_addr = FUNC6(q, skb->data + offset, len);
		if (FUNC2(dev, desc_addr))
			goto err_out_abort;
		desc_len = len;
		desc_nsge = 0;
		left -= len;
		offset += len;
		if (nfrags > 0 && frag_left > 0)
			continue;
		done = (nfrags == 0 && left == 0);
		FUNC10(q, desc, skb,
				  desc_addr, desc_nsge, desc_len,
				  hdrlen, mss,
				  outer_csum,
				  vlan_tci, has_vlan,
				  start, done);
		total_pkts++;
		total_bytes += start ? len : len + hdrlen;
		desc = FUNC9(q, &elem);
		start = false;
		seglen = mss;
	}

	/* Chop skb frags into desc segments */

	for (frag = FUNC16(skb)->frags; len_left; frag++) {
		offset = 0;
		left = FUNC13(frag);
		len_left -= left;
		nfrags--;
		stats->frags++;

		while (left > 0) {
			if (frag_left > 0) {
				len = FUNC11(frag_left, left);
				frag_left -= len;
				elem->addr =
				    FUNC1(FUNC5(q, frag,
								  offset, len));
				if (FUNC2(dev, elem->addr))
					goto err_out_abort;
				elem->len = FUNC0(len);
				elem++;
				desc_nsge++;
				left -= len;
				offset += len;
				if (nfrags > 0 && frag_left > 0)
					continue;
				done = (nfrags == 0 && left == 0);
				FUNC10(q, desc, skb, desc_addr,
						  desc_nsge, desc_len,
						  hdrlen, mss, outer_csum,
						  vlan_tci, has_vlan,
						  start, done);
				total_pkts++;
				total_bytes += start ? len : len + hdrlen;
				desc = FUNC9(q, &elem);
				start = false;
			} else {
				len = FUNC11(mss, left);
				frag_left = mss - len;
				desc_addr = FUNC5(q, frag,
							      offset, len);
				if (FUNC2(dev, desc_addr))
					goto err_out_abort;
				desc_len = len;
				desc_nsge = 0;
				left -= len;
				offset += len;
				if (nfrags > 0 && frag_left > 0)
					continue;
				done = (nfrags == 0 && left == 0);
				FUNC10(q, desc, skb, desc_addr,
						  desc_nsge, desc_len,
						  hdrlen, mss, outer_csum,
						  vlan_tci, has_vlan,
						  start, done);
				total_pkts++;
				total_bytes += start ? len : len + hdrlen;
				desc = FUNC9(q, &elem);
				start = false;
			}
		}
	}

	stats->pkts += total_pkts;
	stats->bytes += total_bytes;
	stats->tso++;

	return 0;

err_out_abort:
	while (rewind->desc != q->head->desc) {
		FUNC4(q, rewind, NULL, NULL);
		rewind = rewind->next;
	}
	q->head = abort;

	return -ENOMEM;
}