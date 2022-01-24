#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urb {int /*<<< orphan*/  status; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer_length; } ;
struct cx231xx_dmaqueue {struct urb** p_left_data; } ;
struct TYPE_3__ {int nfields; int num_bufs; struct urb** transfer_buffer; struct urb** urb; } ;
struct TYPE_4__ {TYPE_1__ isoc_ctl; int /*<<< orphan*/  end_point_addr; struct cx231xx_dmaqueue vidq; } ;
struct cx231xx {scalar_t__ mode_tv; TYPE_2__ video_mode; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  Raw_Video ; 
 int /*<<< orphan*/  TS1_serial_mode ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct urb**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 

void FUNC9(struct cx231xx *dev)
{
	struct cx231xx_dmaqueue *dma_q = &dev->video_mode.vidq;
	struct urb *urb;
	int i;
	bool broken_pipe = false;

	FUNC1("cx231xx: called cx231xx_uninit_isoc\n");

	dev->video_mode.isoc_ctl.nfields = -1;
	for (i = 0; i < dev->video_mode.isoc_ctl.num_bufs; i++) {
		urb = dev->video_mode.isoc_ctl.urb[i];
		if (urb) {
			if (!FUNC2())
				FUNC6(urb);
			else
				FUNC8(urb);

			if (dev->video_mode.isoc_ctl.transfer_buffer[i]) {
				FUNC4(dev->udev,
						  urb->transfer_buffer_length,
						  dev->video_mode.isoc_ctl.
						  transfer_buffer[i],
						  urb->transfer_dma);
			}
			if (urb->status == -EPIPE) {
				broken_pipe = true;
			}
			FUNC5(urb);
			dev->video_mode.isoc_ctl.urb[i] = NULL;
		}
		dev->video_mode.isoc_ctl.transfer_buffer[i] = NULL;
	}

	if (broken_pipe) {
		FUNC1("Reset endpoint to recover broken pipe.");
		FUNC7(dev->udev, dev->video_mode.end_point_addr);
	}
	FUNC3(dev->video_mode.isoc_ctl.urb);
	FUNC3(dev->video_mode.isoc_ctl.transfer_buffer);
	FUNC3(dma_q->p_left_data);

	dev->video_mode.isoc_ctl.urb = NULL;
	dev->video_mode.isoc_ctl.transfer_buffer = NULL;
	dev->video_mode.isoc_ctl.num_bufs = 0;
	dma_q->p_left_data = NULL;

	if (dev->mode_tv == 0)
		FUNC0(dev, 0, Raw_Video);
	else
		FUNC0(dev, 0, TS1_serial_mode);


}