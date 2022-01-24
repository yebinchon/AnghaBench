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
struct jme_ring {int next_to_use; int /*<<< orphan*/  nr_free; } ;
struct jme_adapter {int tx_ring_mask; struct jme_ring* txring; } ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct jme_adapter *jme,
			struct sk_buff *skb)
{
	struct jme_ring *txring = &(jme->txring[0]);
	int idx, nr_alloc, mask = jme->tx_ring_mask;

	idx = txring->next_to_use;
	nr_alloc = FUNC2(skb)->nr_frags + 2;

	if (FUNC3(FUNC0(&txring->nr_free) < nr_alloc))
		return -1;

	FUNC1(nr_alloc, &txring->nr_free);

	txring->next_to_use = (txring->next_to_use + nr_alloc) & mask;

	return idx;
}