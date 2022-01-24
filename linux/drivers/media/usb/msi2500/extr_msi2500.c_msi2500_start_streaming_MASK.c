#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vb2_queue {int dummy; } ;
struct msi2500_dev {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  v4l2_subdev; int /*<<< orphan*/  udev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_START_STREAMING ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct msi2500_dev*) ; 
 int FUNC2 (struct msi2500_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct msi2500_dev*) ; 
 int FUNC4 (struct msi2500_dev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct msi2500_dev* FUNC8 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC9(struct vb2_queue *vq, unsigned int count)
{
	struct msi2500_dev *dev = FUNC8(vq);
	int ret;

	FUNC0(dev->dev, "\n");

	if (!dev->udev)
		return -ENODEV;

	if (FUNC5(&dev->v4l2_lock))
		return -ERESTARTSYS;

	/* wake-up tuner */
	FUNC7(dev->v4l2_subdev, core, s_power, 1);

	ret = FUNC4(dev);

	ret = FUNC3(dev);
	if (ret)
		FUNC1(dev);

	ret = FUNC2(dev, CMD_START_STREAMING, 0);

	FUNC6(&dev->v4l2_lock);

	return ret;
}