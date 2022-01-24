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
struct sk_buff {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	int i, frags = FUNC5(skb)->nr_frags;
	int slots;

	slots = FUNC0(FUNC1(skb->data),
				   FUNC4(skb));

	for (i = 0; i < frags; i++) {
		skb_frag_t *frag = FUNC5(skb)->frags + i;
		unsigned long size = FUNC3(frag);
		unsigned long offset = FUNC2(frag);

		/* Skip unused frames from start of page */
		offset &= ~PAGE_MASK;

		slots += FUNC0(offset, size);
	}

	return slots;
}