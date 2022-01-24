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
struct xgene_enet_desc_ring {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ RING_OWNER_ETH0 ; 
 scalar_t__ RING_OWNER_ETH1 ; 
 int /*<<< orphan*/  FUNC0 (struct xgene_enet_desc_ring*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_desc_ring*) ; 

__attribute__((used)) static void FUNC5(struct xgene_enet_desc_ring *ring)
{
	FUNC3(ring);

	if (FUNC1(ring->id) == RING_OWNER_ETH0 ||
	    FUNC1(ring->id) == RING_OWNER_ETH1)
		FUNC2(ring);

	FUNC0(ring);
	FUNC4(ring);
}