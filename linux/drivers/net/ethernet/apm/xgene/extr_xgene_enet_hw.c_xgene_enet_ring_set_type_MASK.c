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
typedef  int u32 ;
struct xgene_enet_desc_ring {int* state; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int BUFPOOL_MODE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RINGMODE_LEN ; 
 int RINGMODE_POS ; 
 int /*<<< orphan*/  RINGTYPE_LEN ; 
 int RINGTYPE_POS ; 
 int RING_BUFPOOL ; 
 int RING_REGULAR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xgene_enet_desc_ring *ring)
{
	u32 *ring_cfg = ring->state;
	bool is_bufpool;
	u32 val;

	is_bufpool = FUNC1(ring->id);
	val = (is_bufpool) ? RING_BUFPOOL : RING_REGULAR;
	ring_cfg[4] |= (val << RINGTYPE_POS) &
			FUNC0(RINGTYPE_POS, RINGTYPE_LEN);

	if (is_bufpool) {
		ring_cfg[3] |= (BUFPOOL_MODE << RINGMODE_POS) &
				FUNC0(RINGMODE_POS, RINGMODE_LEN);
	}
}