#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int minor; int device_caps; TYPE_4__* v4l2_dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  release; int /*<<< orphan*/ * ioctl_ops; int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; } ;
struct timb_radio_platform_data {int /*<<< orphan*/  dsp; int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  tuner; } ;
struct timbradio {TYPE_4__ v4l2_dev; TYPE_2__ video_dev; TYPE_1__* sd_dsp; int /*<<< orphan*/ * sd_tuner; int /*<<< orphan*/  lock; struct timb_radio_platform_data pdata; } ;
struct TYPE_12__ {struct timb_radio_platform_data* platform_data; } ;
struct platform_device {TYPE_7__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 char* DRIVER_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_TUNER ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,char*,...) ; 
 struct timbradio* FUNC1 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct timbradio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  timbradio_fops ; 
 int /*<<< orphan*/  timbradio_ioctl_ops ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 void* FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video_device_release_empty ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct timbradio*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct timb_radio_platform_data *pdata = pdev->dev.platform_data;
	struct timbradio *tr;
	int err;

	if (!pdata) {
		FUNC0(&pdev->dev, "Platform data missing\n");
		err = -EINVAL;
		goto err;
	}

	tr = FUNC1(&pdev->dev, sizeof(*tr), GFP_KERNEL);
	if (!tr) {
		err = -ENOMEM;
		goto err;
	}

	tr->pdata = *pdata;
	FUNC3(&tr->lock);

	FUNC5(tr->video_dev.name, "Timberdale Radio",
		sizeof(tr->video_dev.name));
	tr->video_dev.fops = &timbradio_fops;
	tr->video_dev.ioctl_ops = &timbradio_ioctl_ops;
	tr->video_dev.release = video_device_release_empty;
	tr->video_dev.minor = -1;
	tr->video_dev.lock = &tr->lock;
	tr->video_dev.device_caps = V4L2_CAP_TUNER | V4L2_CAP_RADIO;

	FUNC5(tr->v4l2_dev.name, DRIVER_NAME, sizeof(tr->v4l2_dev.name));
	err = FUNC6(NULL, &tr->v4l2_dev);
	if (err)
		goto err;

	tr->video_dev.v4l2_dev = &tr->v4l2_dev;

	tr->sd_tuner = FUNC8(&tr->v4l2_dev,
		FUNC2(pdata->i2c_adapter), pdata->tuner, NULL);
	tr->sd_dsp = FUNC8(&tr->v4l2_dev,
		FUNC2(pdata->i2c_adapter), pdata->dsp, NULL);
	if (tr->sd_tuner == NULL || tr->sd_dsp == NULL) {
		err = -ENODEV;
		goto err_video_req;
	}

	tr->v4l2_dev.ctrl_handler = tr->sd_dsp->ctrl_handler;

	err = FUNC9(&tr->video_dev, VFL_TYPE_RADIO, -1);
	if (err) {
		FUNC0(&pdev->dev, "Error reg video\n");
		goto err_video_req;
	}

	FUNC10(&tr->video_dev, tr);

	FUNC4(pdev, tr);
	return 0;

err_video_req:
	FUNC7(&tr->v4l2_dev);
err:
	FUNC0(&pdev->dev, "Failed to register: %d\n", err);

	return err;
}