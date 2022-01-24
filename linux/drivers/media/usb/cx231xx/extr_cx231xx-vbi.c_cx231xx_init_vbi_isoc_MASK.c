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
struct urb {scalar_t__ transfer_flags; } ;
struct cx231xx_dmaqueue {int current_field; int bytes_left_in_line; int /*<<< orphan*/  wq; scalar_t__* partial_buf; scalar_t__ lines_completed; int /*<<< orphan*/  lines_per_field; scalar_t__ last_sav; scalar_t__ is_partial_line; scalar_t__ pos; } ;
struct TYPE_3__ {int (* bulk_copy ) (struct cx231xx*,struct urb*) ;int num_bufs; int max_pkt_size; struct urb** urb; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/ * buf; } ;
struct TYPE_4__ {TYPE_1__ bulk_ctl; int /*<<< orphan*/  end_point_addr; struct cx231xx_dmaqueue vidq; } ;
struct cx231xx {int width; int norm; int /*<<< orphan*/  dev; TYPE_2__ vbi_mode; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NTSC_VBI_LINES ; 
 int /*<<< orphan*/  PAL_VBI_LINES ; 
 int V4L2_STD_625_50 ; 
 int /*<<< orphan*/  Vbi ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cx231xx_irq_vbi_callback ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb**) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct urb* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct cx231xx_dmaqueue*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC14(struct cx231xx *dev, int max_packets,
			  int num_bufs, int max_pkt_size,
			  int (*bulk_copy) (struct cx231xx *dev,
					    struct urb *urb))
{
	struct cx231xx_dmaqueue *dma_q = &dev->vbi_mode.vidq;
	int i;
	int sb_size, pipe;
	struct urb *urb;
	int rc;

	FUNC2(dev->dev, "called cx231xx_vbi_isoc\n");

	/* De-allocates all pending stuff */
	FUNC1(dev);

	/* clear if any halt */
	FUNC10(dev->udev,
		       FUNC12(dev->udev,
				       dev->vbi_mode.end_point_addr));

	dev->vbi_mode.bulk_ctl.bulk_copy = bulk_copy;
	dev->vbi_mode.bulk_ctl.num_bufs = num_bufs;
	dma_q->pos = 0;
	dma_q->is_partial_line = 0;
	dma_q->last_sav = 0;
	dma_q->current_field = -1;
	dma_q->bytes_left_in_line = dev->width << 1;
	dma_q->lines_per_field = ((dev->norm & V4L2_STD_625_50) ?
				  PAL_VBI_LINES : NTSC_VBI_LINES);
	dma_q->lines_completed = 0;
	for (i = 0; i < 8; i++)
		dma_q->partial_buf[i] = 0;

	dev->vbi_mode.bulk_ctl.urb = FUNC6(num_bufs, sizeof(void *),
					     GFP_KERNEL);
	if (!dev->vbi_mode.bulk_ctl.urb) {
		FUNC3(dev->dev,
			"cannot alloc memory for usb buffers\n");
		return -ENOMEM;
	}

	dev->vbi_mode.bulk_ctl.transfer_buffer =
	    FUNC6(num_bufs, sizeof(void *), GFP_KERNEL);
	if (!dev->vbi_mode.bulk_ctl.transfer_buffer) {
		FUNC3(dev->dev,
			"cannot allocate memory for usbtransfer\n");
		FUNC7(dev->vbi_mode.bulk_ctl.urb);
		return -ENOMEM;
	}

	dev->vbi_mode.bulk_ctl.max_pkt_size = max_pkt_size;
	dev->vbi_mode.bulk_ctl.buf = NULL;

	sb_size = max_packets * dev->vbi_mode.bulk_ctl.max_pkt_size;

	/* allocate urbs and transfer buffers */
	for (i = 0; i < dev->vbi_mode.bulk_ctl.num_bufs; i++) {

		urb = FUNC9(0, GFP_KERNEL);
		if (!urb) {
			FUNC1(dev);
			return -ENOMEM;
		}
		dev->vbi_mode.bulk_ctl.urb[i] = urb;
		urb->transfer_flags = 0;

		dev->vbi_mode.bulk_ctl.transfer_buffer[i] =
		    FUNC8(sb_size, GFP_KERNEL);
		if (!dev->vbi_mode.bulk_ctl.transfer_buffer[i]) {
			FUNC3(dev->dev,
				"unable to allocate %i bytes for transfer buffer %i%s\n",
				sb_size, i,
				FUNC4() ? " while in int" : "");
			FUNC1(dev);
			return -ENOMEM;
		}

		pipe = FUNC12(dev->udev, dev->vbi_mode.end_point_addr);
		FUNC11(urb, dev->udev, pipe,
				  dev->vbi_mode.bulk_ctl.transfer_buffer[i],
				  sb_size, cx231xx_irq_vbi_callback, dma_q);
	}

	FUNC5(&dma_q->wq);

	/* submit urbs and enables IRQ */
	for (i = 0; i < dev->vbi_mode.bulk_ctl.num_bufs; i++) {
		rc = FUNC13(dev->vbi_mode.bulk_ctl.urb[i], GFP_ATOMIC);
		if (rc) {
			FUNC3(dev->dev,
				"submit of urb %i failed (error=%i)\n", i, rc);
			FUNC1(dev);
			return rc;
		}
	}

	FUNC0(dev, 1, Vbi);

	return 0;
}