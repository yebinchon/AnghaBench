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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int /*<<< orphan*/  v4l2_dev; } ;
struct pxa_camera_dev {int /*<<< orphan*/  mlock; int /*<<< orphan*/ * sensor; int /*<<< orphan*/  vdev; int /*<<< orphan*/ * mclk_clk; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CICR0 ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_camera_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_camera_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa_camera_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct pxa_camera_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct v4l2_async_notifier *notifier,
		     struct v4l2_subdev *subdev,
		     struct v4l2_async_subdev *asd)
{
	struct pxa_camera_dev *pcdev = FUNC8(notifier->v4l2_dev);

	FUNC2(&pcdev->mlock);
	FUNC1(FUNC4(pcdev),
		 "PXA Camera driver detached from camera %s\n",
		 subdev->name);

	/* disable capture, disable interrupts */
	FUNC0(0x3ff, pcdev->base + CICR0);

	/* Stop DMA engine */
	FUNC6(pcdev);

	FUNC5(pcdev);

	if (pcdev->mclk_clk) {
		FUNC7(pcdev->mclk_clk);
		pcdev->mclk_clk = NULL;
	}

	FUNC9(&pcdev->vdev);
	pcdev->sensor = NULL;

	FUNC3(&pcdev->mlock);
}