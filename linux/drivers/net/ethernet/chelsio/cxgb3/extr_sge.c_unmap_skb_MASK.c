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
struct tx_sw_desc {int addr_idx; size_t sflit; int fragidx; } ;
struct sk_buff {int dummy; } ;
struct sge_txq {unsigned int size; struct tx_sw_desc* sdesc; TYPE_1__* desc; } ;
struct sg_ent {int /*<<< orphan*/ * addr; } ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/ * flit; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int WR_FLITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 TYPE_2__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC6(struct sk_buff *skb, struct sge_txq *q,
			     unsigned int cidx, struct pci_dev *pdev)
{
	const struct sg_ent *sgp;
	struct tx_sw_desc *d = &q->sdesc[cidx];
	int nfrags, frag_idx, curflit, j = d->addr_idx;

	sgp = (struct sg_ent *)&q->desc[cidx].flit[d->sflit];
	frag_idx = d->fragidx;

	if (frag_idx == 0 && FUNC4(skb)) {
		FUNC2(pdev, FUNC0(sgp->addr[0]),
				 FUNC4(skb), PCI_DMA_TODEVICE);
		j = 1;
	}

	curflit = d->sflit + 1 + j;
	nfrags = FUNC5(skb)->nr_frags;

	while (frag_idx < nfrags && curflit < WR_FLITS) {
		FUNC1(pdev, FUNC0(sgp->addr[j]),
			       FUNC3(&FUNC5(skb)->frags[frag_idx]),
			       PCI_DMA_TODEVICE);
		j ^= 1;
		if (j == 0) {
			sgp++;
			curflit++;
		}
		curflit++;
		frag_idx++;
	}

	if (frag_idx < nfrags) {   /* SGL continues into next Tx descriptor */
		d = cidx + 1 == q->size ? q->sdesc : d + 1;
		d->fragidx = frag_idx;
		d->addr_idx = j;
		d->sflit = curflit - WR_FLITS - j; /* sflit can be -1 */
	}
}