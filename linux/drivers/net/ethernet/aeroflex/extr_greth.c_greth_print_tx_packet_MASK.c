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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb)
{
	int i;
	int length;

	if (FUNC4(skb)->nr_frags == 0)
		length = skb->len;
	else
		length = FUNC3(skb);

	FUNC0(KERN_DEBUG, "TX: ", DUMP_PREFIX_OFFSET, 16, 1,
			skb->data, length, true);

	for (i = 0; i < FUNC4(skb)->nr_frags; i++) {

		FUNC0(KERN_DEBUG, "TX: ", DUMP_PREFIX_OFFSET, 16, 1,
			       FUNC1(&FUNC4(skb)->frags[i]),
			       FUNC2(&FUNC4(skb)->frags[i]), true);
	}
}