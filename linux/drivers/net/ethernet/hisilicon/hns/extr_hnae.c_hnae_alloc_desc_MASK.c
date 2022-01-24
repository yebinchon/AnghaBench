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
struct hnae_ring {int desc_num; int /*<<< orphan*/ * desc; scalar_t__ desc_dma_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae_ring*) ; 

__attribute__((used)) static int FUNC6(struct hnae_ring *ring)
{
	int size = ring->desc_num * sizeof(ring->desc[0]);

	ring->desc = FUNC3(size, GFP_KERNEL);
	if (!ring->desc)
		return -ENOMEM;

	ring->desc_dma_addr = FUNC0(FUNC4(ring),
		ring->desc, size, FUNC5(ring));
	if (FUNC1(FUNC4(ring), ring->desc_dma_addr)) {
		ring->desc_dma_addr = 0;
		FUNC2(ring->desc);
		ring->desc = NULL;
		return -ENOMEM;
	}

	return 0;
}