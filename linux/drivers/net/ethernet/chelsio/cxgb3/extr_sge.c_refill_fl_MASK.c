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
struct sk_buff {void* data; } ;
struct sge_fl {size_t pidx; int gen; size_t size; unsigned int credits; unsigned int pend_cred; struct rx_desc* desc; struct rx_sw_desc* sdesc; scalar_t__ buf_size; int /*<<< orphan*/  alloc_failed; int /*<<< orphan*/  order; scalar_t__ use_pages; } ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ mapping; } ;
struct rx_sw_desc {struct sk_buff* skb; TYPE_1__ pg_chunk; } ;
struct rx_desc {int dummy; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ SGE_PG_RSVD ; 
 int FUNC0 (void*,scalar_t__,struct rx_desc*,struct rx_sw_desc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct rx_desc*,int) ; 
 int FUNC2 (struct adapter*,struct sge_fl*,struct rx_sw_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sge_fl*,struct rx_sw_desc*) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC5 (struct rx_sw_desc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,struct sge_fl*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct adapter *adap, struct sge_fl *q, int n, gfp_t gfp)
{
	struct rx_sw_desc *sd = &q->sdesc[q->pidx];
	struct rx_desc *d = &q->desc[q->pidx];
	unsigned int count = 0;

	while (n--) {
		dma_addr_t mapping;
		int err;

		if (q->use_pages) {
			if (FUNC8(FUNC2(adap, q, sd, gfp,
						    q->order))) {
nomem:				q->alloc_failed++;
				break;
			}
			mapping = sd->pg_chunk.mapping + sd->pg_chunk.offset;
			FUNC5(sd, dma_addr, mapping);

			FUNC1(mapping, d, q->gen);
			FUNC6(adap->pdev, mapping,
						q->buf_size - SGE_PG_RSVD,
						PCI_DMA_FROMDEVICE);
		} else {
			void *buf_start;

			struct sk_buff *skb = FUNC3(q->buf_size, gfp);
			if (!skb)
				goto nomem;

			sd->skb = skb;
			buf_start = skb->data;
			err = FUNC0(buf_start, q->buf_size, d, sd,
					     q->gen, adap->pdev);
			if (FUNC8(err)) {
				FUNC4(adap->pdev, q, sd);
				break;
			}
		}

		d++;
		sd++;
		if (++q->pidx == q->size) {
			q->pidx = 0;
			q->gen ^= 1;
			sd = q->sdesc;
			d = q->desc;
		}
		count++;
	}

	q->credits += count;
	q->pend_cred += count;
	FUNC7(adap, q);

	return count;
}