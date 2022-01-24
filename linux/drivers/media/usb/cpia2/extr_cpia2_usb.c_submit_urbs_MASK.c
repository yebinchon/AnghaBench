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
struct urb {int number_of_packets; int interval; int transfer_buffer_length; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  complete; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  pipe; struct camera_data* context; int /*<<< orphan*/  dev; } ;
struct camera_data {TYPE_2__* sbuf; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct urb* urb; int /*<<< orphan*/ * data; } ;
struct TYPE_3__ {int offset; int length; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FRAMES_PER_DESC ; 
 int FRAME_SIZE_PER_DESC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_SBUF ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int /*<<< orphan*/  cpia2_usb_complete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct camera_data *cam)
{
	struct urb *urb;
	int fx, err, i, j;

	for(i=0; i<NUM_SBUF; ++i) {
		if (cam->sbuf[i].data)
			continue;
		cam->sbuf[i].data =
		    FUNC2(FRAME_SIZE_PER_DESC, FRAMES_PER_DESC,
				  GFP_KERNEL);
		if (!cam->sbuf[i].data) {
			while (--i >= 0) {
				FUNC1(cam->sbuf[i].data);
				cam->sbuf[i].data = NULL;
			}
			return -ENOMEM;
		}
	}

	/* We double buffer the Isoc lists, and also know the polling
	 * interval is every frame (1 == (1 << (bInterval -1))).
	 */
	for(i=0; i<NUM_SBUF; ++i) {
		if(cam->sbuf[i].urb) {
			continue;
		}
		urb = FUNC3(FRAMES_PER_DESC, GFP_KERNEL);
		if (!urb) {
			for (j = 0; j < i; j++)
				FUNC4(cam->sbuf[j].urb);
			for (j = 0; j < NUM_SBUF; j++) {
				FUNC1(cam->sbuf[j].data);
				cam->sbuf[j].data = NULL;
			}
			return -ENOMEM;
		}

		cam->sbuf[i].urb = urb;
		urb->dev = cam->dev;
		urb->context = cam;
		urb->pipe = FUNC5(cam->dev, 1 /*ISOC endpoint*/);
		urb->transfer_flags = URB_ISO_ASAP;
		urb->transfer_buffer = cam->sbuf[i].data;
		urb->complete = cpia2_usb_complete;
		urb->number_of_packets = FRAMES_PER_DESC;
		urb->interval = 1;
		urb->transfer_buffer_length =
			FRAME_SIZE_PER_DESC * FRAMES_PER_DESC;

		for (fx = 0; fx < FRAMES_PER_DESC; fx++) {
			urb->iso_frame_desc[fx].offset =
				FRAME_SIZE_PER_DESC * fx;
			urb->iso_frame_desc[fx].length = FRAME_SIZE_PER_DESC;
		}
	}


	/* Queue the ISO urbs, and resubmit in the completion handler */
	for(i=0; i<NUM_SBUF; ++i) {
		err = FUNC6(cam->sbuf[i].urb, GFP_KERNEL);
		if (err) {
			FUNC0("usb_submit_urb[%d]() = %d\n", i, err);
			return err;
		}
	}

	return 0;
}