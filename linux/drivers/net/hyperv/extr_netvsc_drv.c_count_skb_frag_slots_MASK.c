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
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	int i, frags = FUNC3(skb)->nr_frags;
	int pages = 0;

	for (i = 0; i < frags; i++) {
		skb_frag_t *frag = FUNC3(skb)->frags + i;
		unsigned long size = FUNC2(frag);
		unsigned long offset = FUNC1(frag);

		/* Skip unused frames from start of page */
		offset &= ~PAGE_MASK;
		pages += FUNC0(offset + size);
	}
	return pages;
}