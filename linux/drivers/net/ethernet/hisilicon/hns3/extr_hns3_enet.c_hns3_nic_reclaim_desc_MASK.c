#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hns3_enet_ring {int next_to_clean; int desc_num; struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {scalar_t__ type; scalar_t__ length; } ;

/* Variables and functions */
 scalar_t__ DESC_TYPE_SKB ; 
 int /*<<< orphan*/  FUNC0 (struct hns3_enet_ring*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_desc_cb*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 

__attribute__((used)) static void FUNC3(struct hns3_enet_ring *ring, int head,
				  int *bytes, int *pkts)
{
	int ntc = ring->next_to_clean;
	struct hns3_desc_cb *desc_cb;

	while (head != ntc) {
		desc_cb = &ring->desc_cb[ntc];
		(*pkts) += (desc_cb->type == DESC_TYPE_SKB);
		(*bytes) += desc_cb->length;
		/* desc_cb will be cleaned, after hnae3_free_buffer_detach */
		FUNC0(ring, ntc);

		if (++ntc == ring->desc_num)
			ntc = 0;

		/* Issue prefetch for next Tx descriptor */
		FUNC1(&ring->desc_cb[ntc]);
	}

	/* This smp_store_release() pairs with smp_load_acquire() in
	 * ring_space called by hns3_nic_net_xmit.
	 */
	FUNC2(&ring->next_to_clean, ntc);
}