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
typedef  scalar_t__ u64 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct nicvf {int /*<<< orphan*/  hw_tso; } ;
struct cqe_rx_t {int rb_cnt; scalar_t__ align_pad; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCV_FRAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 size_t FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct nicvf*,scalar_t__) ; 
 struct sk_buff* FUNC3 (struct nicvf*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*,scalar_t__,scalar_t__,int) ; 
 int FUNC5 (struct page*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,struct page*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 
 struct page* FUNC11 (int) ; 

struct sk_buff *FUNC12(struct nicvf *nic,
				  struct cqe_rx_t *cqe_rx, bool xdp)
{
	int frag;
	int payload_len = 0;
	struct sk_buff *skb = NULL;
	struct page *page;
	int offset;
	u16 *rb_lens = NULL;
	u64 *rb_ptrs = NULL;
	u64 phys_addr;

	rb_lens = (void *)cqe_rx + (3 * sizeof(u64));
	/* Except 88xx pass1 on all other chips CQE_RX2_S is added to
	 * CQE_RX at word6, hence buffer pointers move by word
	 *
	 * Use existing 'hw_tso' flag which will be set for all chips
	 * except 88xx pass1 instead of a additional cache line
	 * access (or miss) by using pci dev's revision.
	 */
	if (!nic->hw_tso)
		rb_ptrs = (void *)cqe_rx + (6 * sizeof(u64));
	else
		rb_ptrs = (void *)cqe_rx + (7 * sizeof(u64));

	for (frag = 0; frag < cqe_rx->rb_cnt; frag++) {
		payload_len = rb_lens[FUNC1(frag)];
		phys_addr = FUNC2(nic, *rb_ptrs);
		if (!phys_addr) {
			if (skb)
				FUNC0(skb);
			return NULL;
		}

		if (!frag) {
			/* First fragment */
			FUNC4(nic,
					       *rb_ptrs - cqe_rx->align_pad,
					       phys_addr, xdp);
			skb = FUNC3(nic,
						  phys_addr - cqe_rx->align_pad,
						  payload_len);
			if (!skb)
				return NULL;
			FUNC9(skb, cqe_rx->align_pad);
			FUNC8(skb, payload_len);
		} else {
			/* Add fragments */
			FUNC4(nic, *rb_ptrs, phys_addr, xdp);
			page = FUNC11(FUNC6(phys_addr));
			offset = FUNC6(phys_addr) - FUNC5(page);
			FUNC7(skb, FUNC10(skb)->nr_frags, page,
					offset, payload_len, RCV_FRAG_LEN);
		}
		/* Next buffer pointer */
		rb_ptrs++;
	}
	return skb;
}