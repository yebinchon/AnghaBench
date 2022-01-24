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
struct bnad_rx_unmap_q {int alloc_order; int map_size; int /*<<< orphan*/  type; } ;
struct bnad {int dummy; } ;
struct bna_rcb {TYPE_1__* rxq; int /*<<< orphan*/  id; struct bnad_rx_unmap_q* unmap_q; } ;
struct TYPE_2__ {int buffer_size; scalar_t__ multi_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RXBUF_MULTI_BUFF ; 
 int /*<<< orphan*/  BNAD_RXBUF_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnad*,struct bna_rcb*) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct bnad *bnad, struct bna_rcb *rcb)
{
	struct bnad_rx_unmap_q *unmap_q = rcb->unmap_q;
	int order;

	FUNC2(bnad, rcb);

	order = FUNC3(rcb->rxq->buffer_size);

	unmap_q->type = BNAD_RXBUF_PAGE;

	if (FUNC1(rcb->id)) {
		unmap_q->alloc_order = 0;
		unmap_q->map_size = rcb->rxq->buffer_size;
	} else {
		if (rcb->rxq->multi_buffer) {
			unmap_q->alloc_order = 0;
			unmap_q->map_size = rcb->rxq->buffer_size;
			unmap_q->type = BNAD_RXBUF_MULTI_BUFF;
		} else {
			unmap_q->alloc_order = order;
			unmap_q->map_size =
				(rcb->rxq->buffer_size > 2048) ?
				PAGE_SIZE << order : 2048;
		}
	}

	FUNC0((PAGE_SIZE << order) % unmap_q->map_size);

	return 0;
}