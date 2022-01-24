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
struct v4l2_subdev {int dummy; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct stm32_dcmi {int /*<<< orphan*/  vdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct stm32_dcmi* FUNC1 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct v4l2_async_notifier *notifier,
				     struct v4l2_subdev *sd,
				     struct v4l2_async_subdev *asd)
{
	struct stm32_dcmi *dcmi = FUNC1(notifier);

	FUNC0(dcmi->dev, "Removing %s\n", FUNC2(dcmi->vdev));

	/* Checks internally if vdev has been init or not */
	FUNC3(dcmi->vdev);
}