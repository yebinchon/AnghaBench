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
struct gelic_descr {struct gelic_descr* next; int /*<<< orphan*/  skb; } ;
struct TYPE_2__ {struct gelic_descr* head; } ;
struct gelic_card {TYPE_1__ rx_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gelic_card*) ; 
 int FUNC1 (struct gelic_card*,struct gelic_descr*) ; 

__attribute__((used)) static int FUNC2(struct gelic_card *card)
{
	struct gelic_descr *descr = card->rx_chain.head;
	int ret;

	do {
		if (!descr->skb) {
			ret = FUNC1(card, descr);
			if (ret)
				goto rewind;
		}
		descr = descr->next;
	} while (descr != card->rx_chain.head);

	return 0;
rewind:
	FUNC0(card);
	return ret;
}