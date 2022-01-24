#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct v4l2_ctrl_config {char* name; int step; int /*<<< orphan*/  def; int /*<<< orphan*/  max; int /*<<< orphan*/  min; int /*<<< orphan*/  type; int /*<<< orphan*/  id; int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {int device_caps; int /*<<< orphan*/ * v4l2_dev; struct v4l2_ctrl_handler* ctrl_handler; int /*<<< orphan*/ * lock; } ;
struct TYPE_6__ {scalar_t__ device_type; int product; } ;
struct TYPE_7__ {TYPE_1__ pnp_id; } ;
struct camera_data {TYPE_3__ vdev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  v4l2_lock; void* top_light; void* bottom_light; TYPE_2__ params; int /*<<< orphan*/  usb_alt; struct v4l2_ctrl_handler hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA2_CID_USB_ALT ; 
 int DEFAULT_BRIGHTNESS ; 
 int DEFAULT_CONTRAST ; 
 int DEFAULT_SATURATION ; 
 scalar_t__ DEVICE_STV_672 ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  USBIF_ISO_1 ; 
 int /*<<< orphan*/  USBIF_ISO_6 ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_CONTRAST ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_ILLUMINATORS_1 ; 
 int /*<<< orphan*/  V4L2_CID_ILLUMINATORS_2 ; 
 int /*<<< orphan*/  V4L2_CID_JPEG_ACTIVE_MARKER ; 
 int /*<<< orphan*/  V4L2_CID_JPEG_COMPRESSION_QUALITY ; 
 int /*<<< orphan*/  V4L2_CID_POWER_LINE_FREQUENCY ; 
 int /*<<< orphan*/  V4L2_CID_POWER_LINE_FREQUENCY_60HZ ; 
 int /*<<< orphan*/  V4L2_CID_SATURATION ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_CTRL_TYPE_INTEGER ; 
 int V4L2_JPEG_ACTIVE_MARKER_DHT ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  alternate ; 
 int /*<<< orphan*/  cpia2_ctrl_ops ; 
 TYPE_3__ cpia2_template ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC2 (int,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_ctrl_handler*,struct v4l2_ctrl_config*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video_nr ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct camera_data*) ; 

int FUNC10(struct camera_data *cam)
{
	struct v4l2_ctrl_handler *hdl = &cam->hdl;
	struct v4l2_ctrl_config cpia2_usb_alt = {
		.ops = &cpia2_ctrl_ops,
		.id = CPIA2_CID_USB_ALT,
		.name = "USB Alternate",
		.type = V4L2_CTRL_TYPE_INTEGER,
		.min = USBIF_ISO_1,
		.max = USBIF_ISO_6,
		.step = 1,
	};
	int ret;

	FUNC4(hdl, 12);
	FUNC6(hdl, &cpia2_ctrl_ops,
			V4L2_CID_BRIGHTNESS,
			cam->params.pnp_id.device_type == DEVICE_STV_672 ? 1 : 0,
			255, 1, DEFAULT_BRIGHTNESS);
	FUNC6(hdl, &cpia2_ctrl_ops,
			V4L2_CID_CONTRAST, 0, 255, 1, DEFAULT_CONTRAST);
	FUNC6(hdl, &cpia2_ctrl_ops,
			V4L2_CID_SATURATION, 0, 255, 1, DEFAULT_SATURATION);
	FUNC6(hdl, &cpia2_ctrl_ops,
			V4L2_CID_HFLIP, 0, 1, 1, 0);
	FUNC6(hdl, &cpia2_ctrl_ops,
			V4L2_CID_JPEG_ACTIVE_MARKER, 0,
			V4L2_JPEG_ACTIVE_MARKER_DHT, 0,
			V4L2_JPEG_ACTIVE_MARKER_DHT);
	FUNC6(hdl, &cpia2_ctrl_ops,
			V4L2_CID_JPEG_COMPRESSION_QUALITY, 1,
			100, 1, 100);
	cpia2_usb_alt.def = alternate;
	cam->usb_alt = FUNC5(hdl, &cpia2_usb_alt, NULL);
	/* VP5 Only */
	if (cam->params.pnp_id.device_type != DEVICE_STV_672)
		FUNC6(hdl, &cpia2_ctrl_ops,
			V4L2_CID_VFLIP, 0, 1, 1, 0);
	/* Flicker control only valid for 672 */
	if (cam->params.pnp_id.device_type == DEVICE_STV_672)
		FUNC7(hdl, &cpia2_ctrl_ops,
			V4L2_CID_POWER_LINE_FREQUENCY,
			V4L2_CID_POWER_LINE_FREQUENCY_60HZ, 0, 0);
	/* Light control only valid for the QX5 Microscope */
	if (cam->params.pnp_id.product == 0x151) {
		cam->top_light = FUNC6(hdl, &cpia2_ctrl_ops,
				V4L2_CID_ILLUMINATORS_1, 0, 1, 1, 0);
		cam->bottom_light = FUNC6(hdl, &cpia2_ctrl_ops,
				V4L2_CID_ILLUMINATORS_2, 0, 1, 1, 0);
		FUNC2(2, &cam->top_light);
	}

	if (hdl->error) {
		ret = hdl->error;
		FUNC3(hdl);
		return ret;
	}

	cam->vdev = cpia2_template;
	FUNC9(&cam->vdev, cam);
	cam->vdev.lock = &cam->v4l2_lock;
	cam->vdev.ctrl_handler = hdl;
	cam->vdev.v4l2_dev = &cam->v4l2_dev;
	cam->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
				V4L2_CAP_STREAMING;

	FUNC1(cam);

	/* register v4l device */
	if (FUNC8(&cam->vdev, VFL_TYPE_GRABBER, video_nr) < 0) {
		FUNC0("video_register_device failed\n");
		return -ENODEV;
	}

	return 0;
}