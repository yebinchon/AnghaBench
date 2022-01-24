#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct vb2_queue {int dummy; } ;
struct urb {int interval; int* transfer_buffer; int number_of_packets; int transfer_buffer_length; TYPE_1__* iso_frame_desc; int /*<<< orphan*/  complete; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  pipe; struct dvb_usb_device* context; TYPE_4__* dev; } ;
struct dvb_usb_device {TYPE_4__* udev; struct cxusb_medion_dev* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/  mode; } ;
struct cxusb_medion_dev {int /*<<< orphan*/  cx25840; TYPE_3__ auxbuf; struct urb** streamurbs; TYPE_2__ bt656; int /*<<< orphan*/ * vbuf; scalar_t__ vbuf_sequence; scalar_t__ nexturb; scalar_t__ urbcomplete; int /*<<< orphan*/  field_order; scalar_t__ stop_streaming; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int offset; int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STREAMING_OFF ; 
 int /*<<< orphan*/  CMD_STREAMING_ON ; 
 int CXUSB_VIDEO_PKT_SIZE ; 
 int CXUSB_VIDEO_URBS ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NEW_FRAME ; 
 int /*<<< orphan*/  OPS ; 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxusb_medion_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxusb_medion_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cxusb_medion_dev*) ; 
 int /*<<< orphan*/  cxusb_medion_v_complete ; 
 int FUNC4 (struct cxusb_medion_dev*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 struct urb* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int) ; 
 int FUNC11 (struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dvb_usb_device* FUNC13 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC15(struct vb2_queue *q,
					  unsigned int count)
{
	struct dvb_usb_device *dvbdev = FUNC13(q);
	struct cxusb_medion_dev *cxdev = dvbdev->priv;
	u8 streamon_params[2] = { 0x03, 0x00 };
	int npackets, i;
	int ret;

	FUNC5(dvbdev, OPS, "should start streaming\n");

	if (cxdev->stop_streaming) {
		/* stream is being stopped */
		ret = -EBUSY;
		goto ret_retbufs;
	}

	cxdev->field_order = FUNC1(cxdev);

	ret = FUNC12(cxdev->cx25840, video, s_stream, 1);
	if (ret != 0) {
		FUNC6(&dvbdev->udev->dev,
			"unable to start stream (%d)\n", ret);
		goto ret_retbufs;
	}

	ret = FUNC0(dvbdev, CMD_STREAMING_ON, streamon_params, 2,
			     NULL, 0);
	if (ret != 0) {
		FUNC6(&dvbdev->udev->dev,
			"unable to start streaming (%d)\n", ret);
		goto ret_unstream_cx;
	}

	ret = FUNC4(cxdev, &npackets);
	if (ret != 0)
		goto ret_unstream_md;

	for (i = 0; i < CXUSB_VIDEO_URBS; i++) {
		int framen;
		u8 *streambuf;
		struct urb *surb;

		/*
		 * TODO: change this to an array of single pages to avoid
		 * doing a large continuous allocation when (if)
		 * s-g isochronous USB transfers are supported
		 */
		streambuf = FUNC8(npackets * CXUSB_VIDEO_PKT_SIZE,
				    GFP_KERNEL);
		if (!streambuf) {
			if (i < 2) {
				ret = -ENOMEM;
				goto ret_freeab;
			}
			break;
		}

		surb = FUNC9(npackets, GFP_KERNEL);
		if (!surb) {
			FUNC7(streambuf);
			ret = -ENOMEM;
			goto ret_freeu;
		}

		cxdev->streamurbs[i] = surb;
		surb->dev = dvbdev->udev;
		surb->context = dvbdev;
		surb->pipe = FUNC10(dvbdev->udev, 2);

		surb->interval = 1;
		surb->transfer_flags = URB_ISO_ASAP;

		surb->transfer_buffer = streambuf;

		surb->complete = cxusb_medion_v_complete;
		surb->number_of_packets = npackets;
		surb->transfer_buffer_length = npackets * CXUSB_VIDEO_PKT_SIZE;

		for (framen = 0; framen < npackets; framen++) {
			surb->iso_frame_desc[framen].offset =
				CXUSB_VIDEO_PKT_SIZE * framen;

			surb->iso_frame_desc[framen].length =
				CXUSB_VIDEO_PKT_SIZE;
		}
	}

	cxdev->urbcomplete = 0;
	cxdev->nexturb = 0;
	cxdev->vbuf_sequence = 0;

	cxdev->vbuf = NULL;
	cxdev->bt656.mode = NEW_FRAME;
	cxdev->bt656.buf = NULL;

	for (i = 0; i < CXUSB_VIDEO_URBS; i++)
		if (cxdev->streamurbs[i]) {
			ret = FUNC11(cxdev->streamurbs[i],
					     GFP_KERNEL);
			if (ret != 0)
				FUNC6(&dvbdev->udev->dev,
					"URB %d submission failed (%d)\n", i,
					ret);
		}

	return 0;

ret_freeu:
	FUNC3(cxdev);

ret_freeab:
	FUNC14(cxdev->auxbuf.buf);

ret_unstream_md:
	FUNC0(dvbdev, CMD_STREAMING_OFF, NULL, 0, NULL, 0);

ret_unstream_cx:
	FUNC12(cxdev->cx25840, video, s_stream, 0);

ret_retbufs:
	FUNC2(cxdev, true);

	return ret;
}