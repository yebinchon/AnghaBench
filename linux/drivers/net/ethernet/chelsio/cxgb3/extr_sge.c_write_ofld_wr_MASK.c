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
struct work_request_hdr {int /*<<< orphan*/  wr_lo; int /*<<< orphan*/  wr_hi; } ;
struct tx_desc {int /*<<< orphan*/ * flit; } ;
struct sk_buff {int /*<<< orphan*/  destructor; scalar_t__ data; int /*<<< orphan*/  len; } ;
struct sge_txq {TYPE_1__* sdesc; struct tx_desc* desc; } ;
struct sg_ent {int dummy; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  deferred_unmap_destructor ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct work_request_hdr*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct sg_ent*,unsigned int) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct tx_desc*,struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC8 (struct sk_buff*,struct sg_ent*,scalar_t__,scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,struct sk_buff*,struct tx_desc*,unsigned int,struct sge_txq*,struct sg_ent*,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct adapter *adap, struct sk_buff *skb,
			  struct sge_txq *q, unsigned int pidx,
			  unsigned int gen, unsigned int ndesc,
			  const dma_addr_t *addr)
{
	unsigned int sgl_flits, flits;
	struct work_request_hdr *from;
	struct sg_ent *sgp, sgl[MAX_SKB_FRAGS / 2 + 1];
	struct tx_desc *d = &q->desc[pidx];

	if (FUNC0(skb)) {
		q->sdesc[pidx].skb = NULL;
		FUNC7(d, skb, skb->len, gen);
		return;
	}

	/* Only TX_DATA builds SGLs */

	from = (struct work_request_hdr *)skb->data;
	FUNC1(&d->flit[1], &from[1],
	       FUNC6(skb) - sizeof(*from));

	flits = FUNC6(skb) / 8;
	sgp = ndesc == 1 ? (struct sg_ent *)&d->flit[flits] : sgl;
	sgl_flits = FUNC8(skb, sgp, FUNC5(skb),
			      FUNC4(skb) - FUNC5(skb),
			      addr);
	if (FUNC2()) {
		FUNC3(skb, adap->pdev, sgp, sgl_flits);
		skb->destructor = deferred_unmap_destructor;
	}

	FUNC9(ndesc, skb, d, pidx, q, sgl, flits, sgl_flits,
			 gen, from->wr_hi, from->wr_lo);
}