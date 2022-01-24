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
struct msi2500_dev {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  v4l2_subdev; scalar_t__ udev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STOP_STREAMING ; 
 int /*<<< orphan*/  CMD_WREG ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct msi2500_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct msi2500_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msi2500_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msi2500_dev* FUNC8 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC9(struct vb2_queue *vq)
{
	struct msi2500_dev *dev = FUNC8(vq);

	FUNC0(dev->dev, "\n");

	FUNC5(&dev->v4l2_lock);

	if (dev->udev)
		FUNC3(dev);

	FUNC1(dev);

	/* according to tests, at least 700us delay is required  */
	FUNC4(20);
	if (!FUNC2(dev, CMD_STOP_STREAMING, 0)) {
		/* sleep USB IF / ADC */
		FUNC2(dev, CMD_WREG, 0x01000003);
	}

	/* sleep tuner */
	FUNC7(dev->v4l2_subdev, core, s_power, 0);

	FUNC6(&dev->v4l2_lock);
}