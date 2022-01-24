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
struct TYPE_2__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 unsigned int SGE_TX_DESC_MAX_PLEN ; 
 unsigned int FUNC0 (int /*<<< orphan*/  const*) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct sk_buff *skb)
{
	unsigned int count = 0;

	if (PAGE_SIZE > SGE_TX_DESC_MAX_PLEN) {
		unsigned int nfrags = FUNC2(skb)->nr_frags;
		unsigned int i, len = FUNC1(skb);
		while (len > SGE_TX_DESC_MAX_PLEN) {
			count++;
			len -= SGE_TX_DESC_MAX_PLEN;
		}
		for (i = 0; nfrags--; i++) {
			const skb_frag_t *frag = &FUNC2(skb)->frags[i];
			len = FUNC0(frag);
			while (len > SGE_TX_DESC_MAX_PLEN) {
				count++;
				len -= SGE_TX_DESC_MAX_PLEN;
			}
		}
	}
	return count;
}