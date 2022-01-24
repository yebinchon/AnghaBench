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
struct sk_buff {unsigned int tail; unsigned int len; unsigned int data_len; int /*<<< orphan*/  truesize; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb, unsigned int hdr_space,
			  unsigned int length)
{
	int i, num_frags;
	unsigned int size;

	/* put header into skb */
	size = FUNC1(length, hdr_space);
	skb->tail += size;
	skb->len += size;
	length -= size;

	num_frags = FUNC3(skb)->nr_frags;
	for (i = 0; i < num_frags; i++) {
		skb_frag_t *frag = &FUNC3(skb)->frags[i];

		if (length == 0) {
			/* don't need this page */
			FUNC0(frag);
			--FUNC3(skb)->nr_frags;
		} else {
			size = FUNC1(length, (unsigned) PAGE_SIZE);

			FUNC2(frag, size);
			skb->data_len += size;
			skb->truesize += PAGE_SIZE;
			skb->len += size;
			length -= size;
		}
	}
}