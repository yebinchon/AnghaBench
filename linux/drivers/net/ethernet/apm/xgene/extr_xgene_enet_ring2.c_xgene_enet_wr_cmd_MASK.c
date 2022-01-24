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
struct xgene_enet_desc_ring {int id; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int INTR_CLEAR ; 
 int RING_BUFNUM_MASK ; 
 scalar_t__ RING_OWNER_CPU ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  X2_INTLINE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct xgene_enet_desc_ring *ring, int count)
{
	u32 data = 0;

	if (FUNC3(ring->id) == RING_OWNER_CPU) {
		data = FUNC1(X2_INTLINE, ring->id & RING_BUFNUM_MASK) |
		       INTR_CLEAR;
	}
	data |= (count & FUNC0(16, 0));

	FUNC2(data, ring->cmd);
}