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
typedef  scalar_t__ u32 ;
struct mei_device {int dummy; } ;
struct hbm_dma_ring_ctrl {int /*<<< orphan*/  hbuf_wr_idx; int /*<<< orphan*/  hbuf_rd_idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct hbm_dma_ring_ctrl* FUNC2 (struct mei_device*) ; 
 scalar_t__ FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*) ; 

u32 FUNC5(struct mei_device *dev)
{
	struct hbm_dma_ring_ctrl *ctrl = FUNC2(dev);
	u32 wr_idx, rd_idx, hbuf_depth, empty;

	if (!FUNC4(dev))
		return 0;

	if (FUNC1(!ctrl))
		return 0;

	/* easier to work in slots */
	hbuf_depth = FUNC3(dev);
	rd_idx = FUNC0(ctrl->hbuf_rd_idx);
	wr_idx = FUNC0(ctrl->hbuf_wr_idx);

	if (rd_idx > wr_idx)
		empty = rd_idx - wr_idx;
	else
		empty = hbuf_depth - (wr_idx - rd_idx);

	return empty;
}