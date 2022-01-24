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
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct sk_buff *skb)
{
	int frag;

	for (frag = 0; frag < FUNC2(skb)->nr_frags; frag++) {
		const skb_frag_t *fragp = &FUNC2(skb)->frags[frag];

		if (FUNC1(fragp) <= 8 && FUNC0(fragp) & 7)
			return 1;
	}

	return 0;
}