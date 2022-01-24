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
typedef  int /*<<< orphan*/  u32 ;
struct xgene_enet_desc_ring {int /*<<< orphan*/  id; int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFPOOL_MODE ; 
 int /*<<< orphan*/  RINGMODE ; 
 int /*<<< orphan*/  RING_BUFPOOL ; 
 int /*<<< orphan*/  RING_REGULAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X2_RINGTYPE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xgene_enet_desc_ring *ring)
{
	u32 *ring_cfg = ring->state;
	bool is_bufpool;
	u32 val;

	is_bufpool = FUNC1(ring->id);
	val = (is_bufpool) ? RING_BUFPOOL : RING_REGULAR;
	ring_cfg[4] |= FUNC0(X2_RINGTYPE, val);
	if (is_bufpool)
		ring_cfg[3] |= FUNC0(RINGMODE, BUFPOOL_MODE);
}