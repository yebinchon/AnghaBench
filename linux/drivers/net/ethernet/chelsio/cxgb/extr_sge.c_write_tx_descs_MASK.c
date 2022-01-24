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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct cmdQ_e {int addr_hi; int len_gen; unsigned int flags; scalar_t__ addr_lo; } ;
struct cmdQ_ce {struct sk_buff* skb; } ;
struct cmdQ {unsigned int size; struct cmdQ_ce* centries; struct cmdQ_e* entries; } ;
struct adapter {TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int F_CMD_DATAVALID ; 
 unsigned int F_CMD_SOP ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 unsigned int SGE_TX_DESC_MAX_PLEN ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 int /*<<< orphan*/  FUNC4 (struct cmdQ_ce*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdQ_ce*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 unsigned int FUNC13 (unsigned int,struct cmdQ_e**,struct cmdQ_ce**,unsigned int*,scalar_t__*,unsigned int*,unsigned int,struct cmdQ*) ; 
 int /*<<< orphan*/  FUNC14 (struct cmdQ_e*,scalar_t__,unsigned int,unsigned int,int) ; 

__attribute__((used)) static inline void FUNC15(struct adapter *adapter, struct sk_buff *skb,
				  unsigned int pidx, unsigned int gen,
				  struct cmdQ *q)
{
	dma_addr_t mapping, desc_mapping;
	struct cmdQ_e *e, *e1;
	struct cmdQ_ce *ce;
	unsigned int i, flags, first_desc_len, desc_len,
	    nfrags = FUNC11(skb)->nr_frags;

	e = e1 = &q->entries[pidx];
	ce = &q->centries[pidx];

	mapping = FUNC7(adapter->pdev, skb->data,
				 FUNC10(skb), PCI_DMA_TODEVICE);

	desc_mapping = mapping;
	desc_len = FUNC10(skb);

	flags = F_CMD_DATAVALID | F_CMD_SOP |
	    FUNC0(nfrags == 0 && desc_len <= SGE_TX_DESC_MAX_PLEN) |
	    FUNC2(gen);
	first_desc_len = (desc_len <= SGE_TX_DESC_MAX_PLEN) ?
	    desc_len : SGE_TX_DESC_MAX_PLEN;
	e->addr_lo = (u32)desc_mapping;
	e->addr_hi = (u64)desc_mapping >> 32;
	e->len_gen = FUNC3(first_desc_len) | FUNC1(gen);
	ce->skb = NULL;
	FUNC5(ce, dma_len, 0);

	if (PAGE_SIZE > SGE_TX_DESC_MAX_PLEN &&
	    desc_len > SGE_TX_DESC_MAX_PLEN) {
		desc_mapping += first_desc_len;
		desc_len -= first_desc_len;
		e1++;
		ce++;
		if (++pidx == q->size) {
			pidx = 0;
			gen ^= 1;
			e1 = q->entries;
			ce = q->centries;
		}
		pidx = FUNC13(pidx, &e1, &ce, &gen,
						 &desc_mapping, &desc_len,
						 nfrags, q);

		if (FUNC6(desc_len))
			FUNC14(e1, desc_mapping, desc_len, gen,
				      nfrags == 0);
	}

	ce->skb = NULL;
	FUNC4(ce, dma_addr, mapping);
	FUNC5(ce, dma_len, FUNC10(skb));

	for (i = 0; nfrags--; i++) {
		skb_frag_t *frag = &FUNC11(skb)->frags[i];
		e1++;
		ce++;
		if (++pidx == q->size) {
			pidx = 0;
			gen ^= 1;
			e1 = q->entries;
			ce = q->centries;
		}

		mapping = FUNC8(&adapter->pdev->dev, frag, 0,
					   FUNC9(frag), DMA_TO_DEVICE);
		desc_mapping = mapping;
		desc_len = FUNC9(frag);

		pidx = FUNC13(pidx, &e1, &ce, &gen,
						 &desc_mapping, &desc_len,
						 nfrags, q);
		if (FUNC6(desc_len))
			FUNC14(e1, desc_mapping, desc_len, gen,
				      nfrags == 0);
		ce->skb = NULL;
		FUNC4(ce, dma_addr, mapping);
		FUNC5(ce, dma_len, FUNC9(frag));
	}
	ce->skb = skb;
	FUNC12();
	e->flags = flags;
}