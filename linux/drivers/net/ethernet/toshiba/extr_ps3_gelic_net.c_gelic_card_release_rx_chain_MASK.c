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
struct gelic_descr {struct gelic_descr* next; TYPE_2__* skb; scalar_t__ buf_addr; } ;
struct TYPE_3__ {struct gelic_descr* head; } ;
struct gelic_card {TYPE_1__ rx_chain; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GELIC_DESCR_DMA_NOT_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gelic_descr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct gelic_card *card)
{
	struct gelic_descr *descr = card->rx_chain.head;

	do {
		if (descr->skb) {
			FUNC3(FUNC1(card),
					 FUNC0(descr->buf_addr),
					 descr->skb->len,
					 DMA_FROM_DEVICE);
			descr->buf_addr = 0;
			FUNC2(descr->skb);
			descr->skb = NULL;
			FUNC4(descr,
					       GELIC_DESCR_DMA_NOT_IN_USE);
		}
		descr = descr->next;
	} while (descr != card->rx_chain.head);
}