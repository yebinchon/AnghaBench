#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct TYPE_8__ {int hflip; int vflip; int /*<<< orphan*/  mode; int /*<<< orphan*/  palette; } ;
struct stk_camera {int first_init; int frame_size; TYPE_4__ v4l2_dev; int /*<<< orphan*/  sio_full; int /*<<< orphan*/  sio_avail; TYPE_3__ vsettings; scalar_t__ isoc_ep; scalar_t__ n_sbufs; struct usb_interface* interface; struct usb_device* udev; int /*<<< orphan*/  wait_frame; int /*<<< orphan*/  lock; int /*<<< orphan*/  spinlock; struct v4l2_ctrl_handler hdl; } ;
struct TYPE_7__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MODE_VGA ; 
 int /*<<< orphan*/  V4L2_CID_BRIGHTNESS ; 
 int /*<<< orphan*/  V4L2_CID_HFLIP ; 
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  V4L2_PIX_FMT_RGB565 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int hflip ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct stk_camera*) ; 
 struct stk_camera* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stk_ctrl_ops ; 
 int FUNC11 (struct stk_camera*) ; 
 int /*<<< orphan*/  stk_upside_down_dmi_table ; 
 scalar_t__ FUNC12 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC13 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*,struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC16 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC17 (struct v4l2_ctrl_handler*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC19 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int vflip ; 

__attribute__((used)) static int FUNC21(struct usb_interface *interface,
		const struct usb_device_id *id)
{
	struct v4l2_ctrl_handler *hdl;
	int err = 0;
	int i;

	struct stk_camera *dev = NULL;
	struct usb_device *udev = FUNC4(interface);
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;

	dev = FUNC6(sizeof(struct stk_camera), GFP_KERNEL);
	if (dev == NULL) {
		FUNC8("Out of memory !\n");
		return -ENOMEM;
	}
	err = FUNC19(&interface->dev, &dev->v4l2_dev);
	if (err < 0) {
		FUNC1(&udev->dev, "couldn't register v4l2_device\n");
		FUNC5(dev);
		return err;
	}
	hdl = &dev->hdl;
	FUNC17(hdl, 3);
	FUNC18(hdl, &stk_ctrl_ops,
			  V4L2_CID_BRIGHTNESS, 0, 0xff, 0x1, 0x60);
	FUNC18(hdl, &stk_ctrl_ops,
			  V4L2_CID_HFLIP, 0, 1, 1, 1);
	FUNC18(hdl, &stk_ctrl_ops,
			  V4L2_CID_VFLIP, 0, 1, 1, 1);
	if (hdl->error) {
		err = hdl->error;
		FUNC1(&udev->dev, "couldn't register control\n");
		goto error;
	}
	dev->v4l2_dev.ctrl_handler = hdl;

	FUNC10(&dev->spinlock);
	FUNC7(&dev->lock);
	FUNC3(&dev->wait_frame);
	dev->first_init = 1; /* webcam LED management */

	dev->udev = udev;
	dev->interface = interface;
	FUNC14(interface);

	if (hflip != -1)
		dev->vsettings.hflip = hflip;
	else if (FUNC2(stk_upside_down_dmi_table))
		dev->vsettings.hflip = 1;
	else
		dev->vsettings.hflip = 0;
	if (vflip != -1)
		dev->vsettings.vflip = vflip;
	else if (FUNC2(stk_upside_down_dmi_table))
		dev->vsettings.vflip = 1;
	else
		dev->vsettings.vflip = 0;
	dev->n_sbufs = 0;
	FUNC9(dev);

	/* Set up the endpoint information
	 * use only the first isoc-in endpoint
	 * for the current alternate setting */
	iface_desc = interface->cur_altsetting;

	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;

		if (!dev->isoc_ep
			&& FUNC12(endpoint)) {
			/* we found an isoc in endpoint */
			dev->isoc_ep = FUNC13(endpoint);
			break;
		}
	}
	if (!dev->isoc_ep) {
		FUNC8("Could not find isoc-in endpoint\n");
		err = -ENODEV;
		goto error;
	}
	dev->vsettings.palette = V4L2_PIX_FMT_RGB565;
	dev->vsettings.mode = MODE_VGA;
	dev->frame_size = 640 * 480 * 2;

	FUNC0(&dev->sio_avail);
	FUNC0(&dev->sio_full);

	FUNC15(interface, dev);

	err = FUNC11(dev);
	if (err)
		goto error;

	return 0;

error:
	FUNC16(hdl);
	FUNC20(&dev->v4l2_dev);
	FUNC5(dev);
	return err;
}