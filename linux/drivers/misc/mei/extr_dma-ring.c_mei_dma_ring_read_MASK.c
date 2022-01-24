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
typedef  int u32 ;
struct mei_device {TYPE_1__* dr_dscr; int /*<<< orphan*/  dev; } ;
struct hbm_dma_ring_ctrl {scalar_t__ dbuf_rd_idx; } ;
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 size_t DMA_DSCR_DEVICE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*,unsigned char*,int,int) ; 
 struct hbm_dma_ring_ctrl* FUNC6 (struct mei_device*) ; 

void FUNC7(struct mei_device *dev, unsigned char *buf, u32 len)
{
	struct hbm_dma_ring_ctrl *ctrl = FUNC6(dev);
	u32 dbuf_depth;
	u32 rd_idx, rem, slots;

	if (FUNC1(!ctrl))
		return;

	FUNC3(dev->dev, "reading from dma %u bytes\n", len);

	if (!len)
		return;

	dbuf_depth = dev->dr_dscr[DMA_DSCR_DEVICE].size >> 2;
	rd_idx = FUNC0(ctrl->dbuf_rd_idx) & (dbuf_depth - 1);
	slots = FUNC4(len);

	/* if buf is NULL we drop the packet by advancing the pointer.*/
	if (!buf)
		goto out;

	if (rd_idx + slots > dbuf_depth) {
		buf += FUNC5(dev, buf, rd_idx, dbuf_depth - rd_idx);
		rem = slots - (dbuf_depth - rd_idx);
		rd_idx = 0;
	} else {
		rem = slots;
	}

	FUNC5(dev, buf, rd_idx, rem);
out:
	FUNC2(ctrl->dbuf_rd_idx, ctrl->dbuf_rd_idx + slots);
}