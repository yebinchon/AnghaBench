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
struct urb {int status; int number_of_packets; unsigned char* transfer_buffer; TYPE_1__* iso_frame_desc; scalar_t__ context; } ;
struct TYPE_4__ {int /*<<< orphan*/  vb2_buf; } ;
struct msi2500_frame_buf {TYPE_2__ vb; } ;
struct msi2500_dev {scalar_t__ isoc_errors; int /*<<< orphan*/  dev; int /*<<< orphan*/  vb_full; } ;
struct TYPE_3__ {int status; int actual_length; int offset; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int ENOENT ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_ISOC_ERRORS ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (struct msi2500_dev*,void*,unsigned char*,int) ; 
 struct msi2500_frame_buf* FUNC3 (struct msi2500_dev*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct urb *urb)
{
	struct msi2500_dev *dev = (struct msi2500_dev *)urb->context;
	int i, flen, fstatus;
	unsigned char *iso_buf = NULL;
	struct msi2500_frame_buf *fbuf;

	if (FUNC4(urb->status == -ENOENT ||
		     urb->status == -ECONNRESET ||
		     urb->status == -ESHUTDOWN)) {
		FUNC0(dev->dev, "URB (%p) unlinked %ssynchronously\n",
			urb, urb->status == -ENOENT ? "" : "a");
		return;
	}

	if (FUNC4(urb->status != 0)) {
		FUNC0(dev->dev, "called with status %d\n", urb->status);
		/* Give up after a number of contiguous errors */
		if (++dev->isoc_errors > MAX_ISOC_ERRORS)
			FUNC0(dev->dev, "Too many ISOC errors, bailing out\n");
		goto handler_end;
	} else {
		/* Reset ISOC error counter. We did get here, after all. */
		dev->isoc_errors = 0;
	}

	/* Compact data */
	for (i = 0; i < urb->number_of_packets; i++) {
		void *ptr;

		/* Check frame error */
		fstatus = urb->iso_frame_desc[i].status;
		if (FUNC4(fstatus)) {
			FUNC1(dev->dev,
					    "frame=%d/%d has error %d skipping\n",
					    i, urb->number_of_packets, fstatus);
			continue;
		}

		/* Check if that frame contains data */
		flen = urb->iso_frame_desc[i].actual_length;
		if (FUNC4(flen == 0))
			continue;

		iso_buf = urb->transfer_buffer + urb->iso_frame_desc[i].offset;

		/* Get free framebuffer */
		fbuf = FUNC3(dev);
		if (FUNC4(fbuf == NULL)) {
			dev->vb_full++;
			FUNC1(dev->dev,
					    "videobuf is full, %d packets dropped\n",
					    dev->vb_full);
			continue;
		}

		/* fill framebuffer */
		ptr = FUNC7(&fbuf->vb.vb2_buf, 0);
		flen = FUNC2(dev, ptr, iso_buf, flen);
		FUNC8(&fbuf->vb.vb2_buf, 0, flen);
		FUNC6(&fbuf->vb.vb2_buf, VB2_BUF_STATE_DONE);
	}

handler_end:
	i = FUNC5(urb, GFP_ATOMIC);
	if (FUNC4(i != 0))
		FUNC0(dev->dev, "Error (%d) re-submitting urb\n", i);
}