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
struct hns3_enet_ring {int desc_num; int /*<<< orphan*/ * desc; int /*<<< orphan*/  desc_dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_enet_ring*) ; 

__attribute__((used)) static void FUNC3(struct hns3_enet_ring *ring)
{
	int size = ring->desc_num * sizeof(ring->desc[0]);

	FUNC1(ring);

	if (ring->desc) {
		FUNC0(FUNC2(ring), size,
				  ring->desc, ring->desc_dma_addr);
		ring->desc = NULL;
	}
}