#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {void* addr; } ;
struct alx_txd {int word1; void* len; TYPE_1__ adrl; int /*<<< orphan*/  vlan_tag; } ;
struct alx_tx_queue {int write_idx; int count; TYPE_3__* bufs; int /*<<< orphan*/  dev; struct alx_txd* tpd; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {struct sk_buff* skb; } ;
struct TYPE_6__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int TPD_EOP_SHIFT ; 
 int TPD_LSO_V2_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct alx_tx_queue*,int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  size ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sk_buff*) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct alx_tx_queue *txq, struct sk_buff *skb)
{
	struct alx_txd *tpd, *first_tpd;
	dma_addr_t dma;
	int maplen, f, first_idx = txq->write_idx;

	first_tpd = &txq->tpd[txq->write_idx];
	tpd = first_tpd;

	if (tpd->word1 & (1 << TPD_LSO_V2_SHIFT)) {
		if (++txq->write_idx == txq->count)
			txq->write_idx = 0;

		tpd = &txq->tpd[txq->write_idx];
		tpd->len = first_tpd->len;
		tpd->vlan_tag = first_tpd->vlan_tag;
		tpd->word1 = first_tpd->word1;
	}

	maplen = FUNC10(skb);
	dma = FUNC4(txq->dev, skb->data, maplen,
			     DMA_TO_DEVICE);
	if (FUNC5(txq->dev, dma))
		goto err_dma;

	FUNC7(&txq->bufs[txq->write_idx], size, maplen);
	FUNC6(&txq->bufs[txq->write_idx], dma, dma);

	tpd->adrl.addr = FUNC3(dma);
	tpd->len = FUNC1(maplen);

	for (f = 0; f < FUNC11(skb)->nr_frags; f++) {
		skb_frag_t *frag = &FUNC11(skb)->frags[f];

		if (++txq->write_idx == txq->count)
			txq->write_idx = 0;
		tpd = &txq->tpd[txq->write_idx];

		tpd->word1 = first_tpd->word1;

		maplen = FUNC9(frag);
		dma = FUNC8(txq->dev, frag, 0,
				       maplen, DMA_TO_DEVICE);
		if (FUNC5(txq->dev, dma))
			goto err_dma;
		FUNC7(&txq->bufs[txq->write_idx], size, maplen);
		FUNC6(&txq->bufs[txq->write_idx], dma, dma);

		tpd->adrl.addr = FUNC3(dma);
		tpd->len = FUNC1(maplen);
	}

	/* last TPD, set EOP flag and store skb */
	tpd->word1 |= FUNC2(1 << TPD_EOP_SHIFT);
	txq->bufs[txq->write_idx].skb = skb;

	if (++txq->write_idx == txq->count)
		txq->write_idx = 0;

	return 0;

err_dma:
	f = first_idx;
	while (f != txq->write_idx) {
		FUNC0(txq, f);
		if (++f == txq->count)
			f = 0;
	}
	return -ENOMEM;
}