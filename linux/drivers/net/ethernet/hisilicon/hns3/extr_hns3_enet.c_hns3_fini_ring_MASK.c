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
struct hns3_enet_ring {int /*<<< orphan*/ * skb; scalar_t__ pending_buf; scalar_t__ next_to_use; scalar_t__ next_to_clean; int /*<<< orphan*/ * desc_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns3_enet_ring*) ; 

void FUNC4(struct hns3_enet_ring *ring)
{
	FUNC2(ring);
	FUNC1(FUNC3(ring), ring->desc_cb);
	ring->desc_cb = NULL;
	ring->next_to_clean = 0;
	ring->next_to_use = 0;
	ring->pending_buf = 0;
	if (ring->skb) {
		FUNC0(ring->skb);
		ring->skb = NULL;
	}
}