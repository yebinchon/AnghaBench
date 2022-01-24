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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct hnae_ring*) ; 

__attribute__((used)) static void FUNC4(struct hnae_ring *ring)
{
	FUNC0(FUNC2(ring), ring->desc_dma_addr,
			 ring->desc_num * sizeof(ring->desc[0]),
			 FUNC3(ring));
	ring->desc_dma_addr = 0;
	FUNC1(ring->desc);
	ring->desc = NULL;
}