#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct spi_master {int num_chipselect; int /*<<< orphan*/  transfer_one_message; scalar_t__ bus_num; } ;
struct spi_board_info {char* modalias; int max_speed_hz; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  bus_num; } ;
struct msi2500_frame_buf {int dummy; } ;
struct TYPE_18__ {TYPE_8__* ctrl_handler; int /*<<< orphan*/  release; } ;
struct TYPE_19__ {int error; } ;
struct TYPE_16__ {int device_caps; int /*<<< orphan*/ * lock; TYPE_5__* v4l2_dev; TYPE_4__* queue; } ;
struct TYPE_17__ {int io_modes; int buf_struct_size; int /*<<< orphan*/ * lock; int /*<<< orphan*/  timestamp_flags; int /*<<< orphan*/ * mem_ops; int /*<<< orphan*/ * ops; struct msi2500_dev* drv_priv; int /*<<< orphan*/  type; } ;
struct msi2500_dev {int num_formats; TYPE_5__ v4l2_dev; struct spi_master* master; TYPE_8__ hdl; int /*<<< orphan*/ * dev; TYPE_1__ vdev; int /*<<< orphan*/  v4l2_lock; struct v4l2_subdev* v4l2_subdev; int /*<<< orphan*/  vb_queue_lock; TYPE_4__ vb_queue; int /*<<< orphan*/  buffersize; int /*<<< orphan*/  pixelformat; int /*<<< orphan*/  f_adc; int /*<<< orphan*/  udev; int /*<<< orphan*/  queued_bufs; int /*<<< orphan*/  queued_bufs_lock; } ;
struct TYPE_15__ {int /*<<< orphan*/  rangelow; } ;
struct TYPE_14__ {int /*<<< orphan*/  buffersize; int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NUM_FORMATS ; 
 int /*<<< orphan*/  V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_SDR_CAPTURE ; 
 int V4L2_CAP_READWRITE ; 
 int V4L2_CAP_SDR_CAPTURE ; 
 int V4L2_CAP_STREAMING ; 
 int V4L2_CAP_TUNER ; 
 int VB2_MMAP ; 
 int VB2_READ ; 
 int VB2_USERPTR ; 
 int /*<<< orphan*/  VFL_TYPE_SDR ; 
 TYPE_13__* bands ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_12__* formats ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct msi2500_dev*) ; 
 struct msi2500_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi2500_emulated_fmt ; 
 TYPE_1__ msi2500_template ; 
 int /*<<< orphan*/  msi2500_transfer_one_message ; 
 int /*<<< orphan*/  msi2500_vb2_ops ; 
 int /*<<< orphan*/  msi2500_video_release ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct spi_master* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_master*,struct msi2500_dev*) ; 
 int FUNC11 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC12 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 struct v4l2_subdev* FUNC19 (TYPE_5__*,struct spi_master*,struct spi_board_info*) ; 
 int FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  vb2_vmalloc_memops ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 
 int FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,struct msi2500_dev*) ; 

__attribute__((used)) static int FUNC24(struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct msi2500_dev *dev;
	struct v4l2_subdev *sd;
	struct spi_master *master;
	int ret;
	static struct spi_board_info board_info = {
		.modalias		= "msi001",
		.bus_num		= 0,
		.chip_select		= 0,
		.max_speed_hz		= 12000000,
	};

	dev = FUNC6(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto err;
	}

	FUNC7(&dev->v4l2_lock);
	FUNC7(&dev->vb_queue_lock);
	FUNC13(&dev->queued_bufs_lock);
	FUNC0(&dev->queued_bufs);
	dev->dev = &intf->dev;
	dev->udev = FUNC4(intf);
	dev->f_adc = bands[0].rangelow;
	dev->pixelformat = formats[0].pixelformat;
	dev->buffersize = formats[0].buffersize;
	dev->num_formats = NUM_FORMATS;
	if (!msi2500_emulated_fmt)
		dev->num_formats -= 2;

	/* Init videobuf2 queue structure */
	dev->vb_queue.type = V4L2_BUF_TYPE_SDR_CAPTURE;
	dev->vb_queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
	dev->vb_queue.drv_priv = dev;
	dev->vb_queue.buf_struct_size = sizeof(struct msi2500_frame_buf);
	dev->vb_queue.ops = &msi2500_vb2_ops;
	dev->vb_queue.mem_ops = &vb2_vmalloc_memops;
	dev->vb_queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
	ret = FUNC20(&dev->vb_queue);
	if (ret) {
		FUNC1(dev->dev, "Could not initialize vb2 queue\n");
		goto err_free_mem;
	}

	/* Init video_device structure */
	dev->vdev = msi2500_template;
	dev->vdev.queue = &dev->vb_queue;
	dev->vdev.queue->lock = &dev->vb_queue_lock;
	FUNC23(&dev->vdev, dev);

	/* Register the v4l2_device structure */
	dev->v4l2_dev.release = msi2500_video_release;
	ret = FUNC17(&intf->dev, &dev->v4l2_dev);
	if (ret) {
		FUNC1(dev->dev, "Failed to register v4l2-device (%d)\n", ret);
		goto err_free_mem;
	}

	/* SPI master adapter */
	master = FUNC8(dev->dev, 0);
	if (master == NULL) {
		ret = -ENOMEM;
		goto err_unregister_v4l2_dev;
	}

	dev->master = master;
	master->bus_num = 0;
	master->num_chipselect = 1;
	master->transfer_one_message = msi2500_transfer_one_message;
	FUNC10(master, dev);
	ret = FUNC11(master);
	if (ret) {
		FUNC9(master);
		goto err_unregister_v4l2_dev;
	}

	/* load v4l2 subdevice */
	sd = FUNC19(&dev->v4l2_dev, master, &board_info);
	dev->v4l2_subdev = sd;
	if (sd == NULL) {
		FUNC1(dev->dev, "cannot get v4l2 subdevice\n");
		ret = -ENODEV;
		goto err_unregister_master;
	}

	/* Register controls */
	FUNC16(&dev->hdl, 0);
	if (dev->hdl.error) {
		ret = dev->hdl.error;
		FUNC1(dev->dev, "Could not initialize controls\n");
		goto err_free_controls;
	}

	/* currently all controls are from subdev */
	FUNC14(&dev->hdl, sd->ctrl_handler, NULL, true);

	dev->v4l2_dev.ctrl_handler = &dev->hdl;
	dev->vdev.v4l2_dev = &dev->v4l2_dev;
	dev->vdev.lock = &dev->v4l2_lock;
	dev->vdev.device_caps = V4L2_CAP_SDR_CAPTURE | V4L2_CAP_STREAMING |
				V4L2_CAP_READWRITE | V4L2_CAP_TUNER;

	ret = FUNC22(&dev->vdev, VFL_TYPE_SDR, -1);
	if (ret) {
		FUNC1(dev->dev,
			"Failed to register as video device (%d)\n", ret);
		goto err_unregister_v4l2_dev;
	}
	FUNC2(dev->dev, "Registered as %s\n",
		 FUNC21(&dev->vdev));
	FUNC3(dev->dev,
		   "SDR API is still slightly experimental and functionality changes may follow\n");
	return 0;
err_free_controls:
	FUNC15(&dev->hdl);
err_unregister_master:
	FUNC12(dev->master);
err_unregister_v4l2_dev:
	FUNC18(&dev->v4l2_dev);
err_free_mem:
	FUNC5(dev);
err:
	return ret;
}