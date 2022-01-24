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
typedef  enum xgene_ring_owner { ____Placeholder_xgene_ring_owner } xgene_ring_owner ;

/* Variables and functions */
 int RING_OWNER_ETH0 ; 
 int RING_OWNER_ETH1 ; 
 int /*<<< orphan*/  FUNC0 (struct xgene_enet_desc_ring*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgene_enet_desc_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_enet_desc_ring*) ; 

__attribute__((used)) static void FUNC5(struct xgene_enet_desc_ring *ring)
{
	enum xgene_ring_owner owner;

	FUNC3(ring);

	owner = FUNC1(ring->id);
	if (owner == RING_OWNER_ETH0 || owner == RING_OWNER_ETH1)
		FUNC2(ring);

	FUNC0(ring);
	FUNC4(ring);
}