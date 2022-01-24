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
struct sk_buff {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ HNS3_MAX_BD_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC5(struct sk_buff *skb)
{
	unsigned int bd_num;
	int i;

	/* if the total len is within the max bd limit */
	if (FUNC1(skb->len <= HNS3_MAX_BD_SIZE))
		return FUNC4(skb)->nr_frags + 1;

	bd_num = FUNC0(FUNC3(skb));

	for (i = 0; i < FUNC4(skb)->nr_frags; i++) {
		skb_frag_t *frag = &FUNC4(skb)->frags[i];
		bd_num += FUNC0(FUNC2(frag));
	}

	return bd_num;
}