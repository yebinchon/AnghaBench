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
struct rx_ring_info {int rbr_index; int rbr_pending; int rbr_blocks_per_page; int rbr_table_size; int rbr_kick_thresh; int /*<<< orphan*/  rx_channel; } ;
struct niu {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct niu*,struct rx_ring_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct niu *np, struct rx_ring_info *rp, gfp_t mask)
{
	int index = rp->rbr_index;

	rp->rbr_pending++;
	if ((rp->rbr_pending % rp->rbr_blocks_per_page) == 0) {
		int err = FUNC2(np, rp, mask, index);

		if (FUNC4(err)) {
			rp->rbr_pending--;
			return;
		}

		rp->rbr_index += rp->rbr_blocks_per_page;
		FUNC0(rp->rbr_index > rp->rbr_table_size);
		if (rp->rbr_index == rp->rbr_table_size)
			rp->rbr_index = 0;

		if (rp->rbr_pending >= rp->rbr_kick_thresh) {
			FUNC3(FUNC1(rp->rx_channel), rp->rbr_pending);
			rp->rbr_pending = 0;
		}
	}
}