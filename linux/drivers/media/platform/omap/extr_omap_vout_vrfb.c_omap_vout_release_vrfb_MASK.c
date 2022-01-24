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
struct TYPE_2__ {scalar_t__ req_status; int /*<<< orphan*/  chan; int /*<<< orphan*/  xt; } ;
struct omap_vout_device {TYPE_1__ vrfb_dma_tx; int /*<<< orphan*/ * vrfb_context; } ;

/* Variables and functions */
 scalar_t__ DMA_CHAN_ALLOTED ; 
 scalar_t__ DMA_CHAN_NOT_ALLOTED ; 
 int VRFB_NUM_BUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct omap_vout_device *vout)
{
	int i;

	for (i = 0; i < VRFB_NUM_BUFS; i++)
		FUNC3(&vout->vrfb_context[i]);

	if (vout->vrfb_dma_tx.req_status == DMA_CHAN_ALLOTED) {
		vout->vrfb_dma_tx.req_status = DMA_CHAN_NOT_ALLOTED;
		FUNC2(vout->vrfb_dma_tx.xt);
		FUNC1(vout->vrfb_dma_tx.chan);
		FUNC0(vout->vrfb_dma_tx.chan);
	}
}