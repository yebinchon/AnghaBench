#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {int number_of_packets; int transfer_flags; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  transfer_dma; } ;
struct cx231xx_dmaqueue {int current_field; int lines_per_field; int bytes_left_in_line; int* ps_head; int /*<<< orphan*/  wq; scalar_t__* partial_buf; int /*<<< orphan*/  add_ps_package_head; scalar_t__ mpeg_buffer_completed; scalar_t__ left_data_count; scalar_t__ mpeg_buffer_done; scalar_t__ lines_completed; scalar_t__ field1_done; scalar_t__ last_sav; scalar_t__ is_partial_line; scalar_t__ pos; int /*<<< orphan*/ * p_left_data; } ;
struct TYPE_6__ {int (* isoc_copy ) (struct cx231xx*,struct urb*) ;int num_bufs; int max_pkt_size; struct urb** urb; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {int end_point_addr; TYPE_3__ isoc_ctl; struct cx231xx_dmaqueue vidq; } ;
struct cx231xx {int height; int width; int mode_tv; int /*<<< orphan*/  dev; TYPE_2__ video_mode; int /*<<< orphan*/  udev; } ;
struct TYPE_4__ {int offset; int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX231XX_NEED_ADD_PS_PACKAGE_HEAD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  Raw_Video ; 
 int /*<<< orphan*/  TS1_serial_mode ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cx231xx_isoc_irq_callback ; 
 int /*<<< orphan*/  FUNC1 (struct cx231xx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb**) ; 
 int /*<<< orphan*/ * FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct cx231xx_dmaqueue*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC14(struct cx231xx *dev, int max_packets,
		      int num_bufs, int max_pkt_size,
		      int (*isoc_copy) (struct cx231xx *dev, struct urb *urb))
{
	struct cx231xx_dmaqueue *dma_q = &dev->video_mode.vidq;
	int i;
	int sb_size, pipe;
	struct urb *urb;
	int j, k;
	int rc;

	/* De-allocates all pending stuff */
	FUNC1(dev);

	dma_q->p_left_data = FUNC7(4096, GFP_KERNEL);
	if (dma_q->p_left_data == NULL)
		return -ENOMEM;

	dev->video_mode.isoc_ctl.isoc_copy = isoc_copy;
	dev->video_mode.isoc_ctl.num_bufs = num_bufs;
	dma_q->pos = 0;
	dma_q->is_partial_line = 0;
	dma_q->last_sav = 0;
	dma_q->current_field = -1;
	dma_q->field1_done = 0;
	dma_q->lines_per_field = dev->height / 2;
	dma_q->bytes_left_in_line = dev->width << 1;
	dma_q->lines_completed = 0;
	dma_q->mpeg_buffer_done = 0;
	dma_q->left_data_count = 0;
	dma_q->mpeg_buffer_completed = 0;
	dma_q->add_ps_package_head = CX231XX_NEED_ADD_PS_PACKAGE_HEAD;
	dma_q->ps_head[0] = 0x00;
	dma_q->ps_head[1] = 0x00;
	dma_q->ps_head[2] = 0x01;
	dma_q->ps_head[3] = 0xBA;
	for (i = 0; i < 8; i++)
		dma_q->partial_buf[i] = 0;

	dev->video_mode.isoc_ctl.urb =
	    FUNC5(num_bufs, sizeof(void *), GFP_KERNEL);
	if (!dev->video_mode.isoc_ctl.urb) {
		FUNC2(dev->dev,
			"cannot alloc memory for usb buffers\n");
		return -ENOMEM;
	}

	dev->video_mode.isoc_ctl.transfer_buffer =
	    FUNC5(num_bufs, sizeof(void *), GFP_KERNEL);
	if (!dev->video_mode.isoc_ctl.transfer_buffer) {
		FUNC2(dev->dev,
			"cannot allocate memory for usbtransfer\n");
		FUNC6(dev->video_mode.isoc_ctl.urb);
		return -ENOMEM;
	}

	dev->video_mode.isoc_ctl.max_pkt_size = max_pkt_size;
	dev->video_mode.isoc_ctl.buf = NULL;

	sb_size = max_packets * dev->video_mode.isoc_ctl.max_pkt_size;

	if (dev->mode_tv == 1)
		dev->video_mode.end_point_addr = 0x81;
	else
		dev->video_mode.end_point_addr = 0x84;


	/* allocate urbs and transfer buffers */
	for (i = 0; i < dev->video_mode.isoc_ctl.num_bufs; i++) {
		urb = FUNC10(max_packets, GFP_KERNEL);
		if (!urb) {
			FUNC1(dev);
			return -ENOMEM;
		}
		dev->video_mode.isoc_ctl.urb[i] = urb;

		dev->video_mode.isoc_ctl.transfer_buffer[i] =
		    FUNC9(dev->udev, sb_size, GFP_KERNEL,
				       &urb->transfer_dma);
		if (!dev->video_mode.isoc_ctl.transfer_buffer[i]) {
			FUNC2(dev->dev,
				"unable to allocate %i bytes for transfer buffer %i%s\n",
				sb_size, i,
				FUNC3() ? " while in int" : "");
			FUNC1(dev);
			return -ENOMEM;
		}
		FUNC8(dev->video_mode.isoc_ctl.transfer_buffer[i], 0, sb_size);

		pipe =
		    FUNC12(dev->udev, dev->video_mode.end_point_addr);

		FUNC11(urb, dev->udev, pipe,
				 dev->video_mode.isoc_ctl.transfer_buffer[i],
				 sb_size, cx231xx_isoc_irq_callback, dma_q, 1);

		urb->number_of_packets = max_packets;
		urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;

		k = 0;
		for (j = 0; j < max_packets; j++) {
			urb->iso_frame_desc[j].offset = k;
			urb->iso_frame_desc[j].length =
			    dev->video_mode.isoc_ctl.max_pkt_size;
			k += dev->video_mode.isoc_ctl.max_pkt_size;
		}
	}

	FUNC4(&dma_q->wq);

	/* submit urbs and enables IRQ */
	for (i = 0; i < dev->video_mode.isoc_ctl.num_bufs; i++) {
		rc = FUNC13(dev->video_mode.isoc_ctl.urb[i],
				    GFP_ATOMIC);
		if (rc) {
			FUNC2(dev->dev,
				"submit of urb %i failed (error=%i)\n", i,
				rc);
			FUNC1(dev);
			return rc;
		}
	}

	if (dev->mode_tv == 0)
		FUNC0(dev, 1, Raw_Video);
	else
		FUNC0(dev, 1, TS1_serial_mode);

	return 0;
}