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
struct sg_ent {void** len; void** addr; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {unsigned int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/  const) ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC3 (struct sk_buff const*) ; 

__attribute__((used)) static inline unsigned int FUNC4(const struct sk_buff *skb,
				     struct sg_ent *sgp, unsigned char *start,
				     unsigned int len, const dma_addr_t *addr)
{
	unsigned int i, j = 0, k = 0, nfrags;

	if (len) {
		sgp->len[0] = FUNC0(len);
		sgp->addr[j++] = FUNC1(addr[k++]);
	}

	nfrags = FUNC3(skb)->nr_frags;
	for (i = 0; i < nfrags; i++) {
		const skb_frag_t *frag = &FUNC3(skb)->frags[i];

		sgp->len[j] = FUNC0(FUNC2(frag));
		sgp->addr[j] = FUNC1(addr[k++]);
		j ^= 1;
		if (j == 0)
			++sgp;
	}
	if (j)
		sgp->len[j] = 0;
	return ((nfrags + (len != 0)) * 3) / 2 + j;
}