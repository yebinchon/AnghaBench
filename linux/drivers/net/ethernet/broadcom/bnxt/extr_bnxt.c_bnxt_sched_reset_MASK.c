#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bnxt_rx_ring_info {int rx_next_cons; TYPE_1__* bnapi; } ;
struct bnxt {int /*<<< orphan*/  sp_event; } ;
struct TYPE_2__ {int in_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_RESET_TASK_SP_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bnxt *bp, struct bnxt_rx_ring_info *rxr)
{
	if (!rxr->bnapi->in_reset) {
		rxr->bnapi->in_reset = true;
		FUNC1(BNXT_RESET_TASK_SP_EVENT, &bp->sp_event);
		FUNC0(bp);
	}
	rxr->rx_next_cons = 0xffff;
}