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
struct mei_device {int dummy; } ;
struct hbm_dma_ring_ctrl {int dummy; } ;

/* Variables and functions */
 struct hbm_dma_ring_ctrl* FUNC0 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hbm_dma_ring_ctrl*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct mei_device *dev)
{
	struct hbm_dma_ring_ctrl *ctrl = FUNC0(dev);

	if (!ctrl)
		return;

	FUNC1(ctrl, 0, sizeof(*ctrl));
}