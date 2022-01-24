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
typedef  size_t u32 ;
struct xgene_enet_desc_ring {size_t slots; int id; int irq_mbox_dma; int /*<<< orphan*/ * raw_desc; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 size_t CSR_VMID0_INTR_MBOX ; 
 int RING_BUFNUM_MASK ; 
 scalar_t__ RING_OWNER_CPU ; 
 int /*<<< orphan*/  FUNC0 (struct xgene_enet_desc_ring*) ; 
 size_t FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_enet_desc_ring*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_desc_ring*) ; 

__attribute__((used)) static struct xgene_enet_desc_ring *FUNC8(
				    struct xgene_enet_desc_ring *ring)
{
	bool is_bufpool;
	u32 addr, i;

	FUNC0(ring);
	FUNC7(ring);
	FUNC6(ring);

	ring->slots = FUNC1(ring->id, ring->size);

	is_bufpool = FUNC2(ring->id);
	if (is_bufpool || FUNC4(ring->id) != RING_OWNER_CPU)
		return ring;

	addr = CSR_VMID0_INTR_MBOX + (4 * (ring->id & RING_BUFNUM_MASK));
	FUNC5(ring, addr, ring->irq_mbox_dma >> 10);

	for (i = 0; i < ring->slots; i++)
		FUNC3(&ring->raw_desc[i]);

	return ring;
}