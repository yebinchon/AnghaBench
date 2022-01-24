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
struct hns3_enet_ring {int desc_num; int /*<<< orphan*/  next_to_use; int /*<<< orphan*/  next_to_clean; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct hns3_enet_ring *ring)
{
	/* This smp_load_acquire() pairs with smp_store_release() in
	 * hns3_nic_reclaim_one_desc called by hns3_clean_tx_ring.
	 */
	int begin = FUNC1(&ring->next_to_clean);
	int end = FUNC0(ring->next_to_use);

	return ((end >= begin) ? (ring->desc_num - end + begin) :
			(begin - end)) - 1;
}