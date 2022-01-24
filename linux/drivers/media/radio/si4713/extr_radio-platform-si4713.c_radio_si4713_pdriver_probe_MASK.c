#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  ctrl_handler; } ;
struct radio_si4713_platform_data {int /*<<< orphan*/  subdev; } ;
struct TYPE_8__ {int device_caps; int /*<<< orphan*/ * lock; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/ * v4l2_dev; } ;
struct radio_si4713_device {int /*<<< orphan*/  v4l2_dev; TYPE_1__ radio_dev; int /*<<< orphan*/  lock; } ;
struct TYPE_9__ {struct radio_si4713_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_CAP_MODULATOR ; 
 int V4L2_CAP_RDS_OUTPUT ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 struct radio_si4713_device* FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radio_nr ; 
 TYPE_1__ radio_si4713_vdev_template ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct radio_si4713_device*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct radio_si4713_platform_data *pdata = pdev->dev.platform_data;
	struct radio_si4713_device *rsdev;
	struct v4l2_subdev *sd;
	int rval = 0;

	if (!pdata) {
		FUNC0(&pdev->dev, "Cannot proceed without platform data.\n");
		rval = -EINVAL;
		goto exit;
	}

	rsdev = FUNC2(&pdev->dev, sizeof(*rsdev), GFP_KERNEL);
	if (!rsdev) {
		FUNC0(&pdev->dev, "Failed to alloc video device.\n");
		rval = -ENOMEM;
		goto exit;
	}
	FUNC4(&rsdev->lock);

	rval = FUNC5(&pdev->dev, &rsdev->v4l2_dev);
	if (rval) {
		FUNC0(&pdev->dev, "Failed to register v4l2 device.\n");
		goto exit;
	}

	sd = FUNC3(pdata->subdev);
	rval = FUNC6(&rsdev->v4l2_dev, sd);
	if (rval) {
		FUNC0(&pdev->dev, "Cannot get v4l2 subdevice\n");
		goto unregister_v4l2_dev;
	}

	rsdev->radio_dev = radio_si4713_vdev_template;
	rsdev->radio_dev.v4l2_dev = &rsdev->v4l2_dev;
	rsdev->radio_dev.ctrl_handler = sd->ctrl_handler;
	/* Serialize all access to the si4713 */
	rsdev->radio_dev.lock = &rsdev->lock;
	rsdev->radio_dev.device_caps = V4L2_CAP_MODULATOR | V4L2_CAP_RDS_OUTPUT;
	FUNC9(&rsdev->radio_dev, rsdev);
	if (FUNC8(&rsdev->radio_dev, VFL_TYPE_RADIO, radio_nr)) {
		FUNC0(&pdev->dev, "Could not register video device.\n");
		rval = -EIO;
		goto unregister_v4l2_dev;
	}
	FUNC1(&pdev->dev, "New device successfully probed\n");

	goto exit;

unregister_v4l2_dev:
	FUNC7(&rsdev->v4l2_dev);
exit:
	return rval;
}