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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_TX_DMA_BUF_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC4(struct sk_buff *skb)
{
	int i, nfrags;
	skb_frag_t *frag;

	nfrags = 1;
	if (FUNC2(skb)) {
		for (i = 0; i < FUNC3(skb)->nr_frags; i++) {
			frag = &FUNC3(skb)->frags[i];
			nfrags += FUNC0(FUNC1(frag),
						MTK_TX_DMA_BUF_LEN);
		}
	} else {
		nfrags += FUNC3(skb)->nr_frags;
	}

	return nfrags;
}