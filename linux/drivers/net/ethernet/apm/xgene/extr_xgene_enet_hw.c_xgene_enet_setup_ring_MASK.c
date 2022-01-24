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
struct xgene_enet_desc_ring {size_t size; size_t slots; int /*<<< orphan*/  id; int /*<<< orphan*/ * raw_desc; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CSR_RING_NE_INT_MODE ; 
 scalar_t__ RING_OWNER_CPU ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_enet_desc_ring*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_enet_desc_ring*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_desc_ring*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgene_enet_desc_ring*) ; 

__attribute__((used)) static struct xgene_enet_desc_ring *FUNC11(
				    struct xgene_enet_desc_ring *ring)
{
	u32 size = ring->size;
	u32 i, data;
	bool is_bufpool;

	FUNC1(ring);
	FUNC10(ring);
	FUNC9(ring);

	ring->slots = FUNC2(ring->id, size);

	is_bufpool = FUNC3(ring->id);
	if (is_bufpool || FUNC6(ring->id) != RING_OWNER_CPU)
		return ring;

	for (i = 0; i < ring->slots; i++)
		FUNC4(&ring->raw_desc[i]);

	FUNC7(ring, CSR_RING_NE_INT_MODE, &data);
	data |= FUNC0(31 - FUNC5(ring->id));
	FUNC8(ring, CSR_RING_NE_INT_MODE, data);

	return ring;
}