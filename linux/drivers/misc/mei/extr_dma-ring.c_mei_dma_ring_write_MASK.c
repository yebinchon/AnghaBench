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
struct mei_device {int /*<<< orphan*/  dev; } ;
struct hbm_dma_ring_ctrl {scalar_t__ hbuf_wr_idx; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_device*,unsigned char*,int,int) ; 
 struct hbm_dma_ring_ctrl* FUNC6 (struct mei_device*) ; 
 int FUNC7 (struct mei_device*) ; 

void FUNC8(struct mei_device *dev, unsigned char *buf, u32 len)
{
	struct hbm_dma_ring_ctrl *ctrl = FUNC6(dev);
	u32 hbuf_depth;
	u32 wr_idx, rem, slots;

	if (FUNC1(!ctrl))
		return;

	FUNC3(dev->dev, "writing to dma %u bytes\n", len);
	hbuf_depth = FUNC7(dev);
	wr_idx = FUNC0(ctrl->hbuf_wr_idx) & (hbuf_depth - 1);
	slots = FUNC4(len);

	if (wr_idx + slots > hbuf_depth) {
		buf += FUNC5(dev, buf, wr_idx, hbuf_depth - wr_idx);
		rem = slots - (hbuf_depth - wr_idx);
		wr_idx = 0;
	} else {
		rem = slots;
	}

	FUNC5(dev, buf, wr_idx, rem);

	FUNC2(ctrl->hbuf_wr_idx, ctrl->hbuf_wr_idx + slots);
}