#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  name; int /*<<< orphan*/  entity; int /*<<< orphan*/  fwnode; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct stm32_dcmi {int /*<<< orphan*/  dev; TYPE_1__* vdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;

/* Variables and functions */
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_LNK_FL_IMMUTABLE ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stm32_dcmi* FUNC4 (struct v4l2_async_notifier*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_async_notifier *notifier,
				   struct v4l2_subdev *subdev,
				   struct v4l2_async_subdev *asd)
{
	struct stm32_dcmi *dcmi = FUNC4(notifier);
	unsigned int ret;
	int src_pad;

	FUNC0(dcmi->dev, "Subdev \"%s\" bound\n", subdev->name);

	/*
	 * Link this sub-device to DCMI, it could be
	 * a parallel camera sensor or a bridge
	 */
	src_pad = FUNC3(&subdev->entity,
					      subdev->fwnode,
					      MEDIA_PAD_FL_SOURCE);

	ret = FUNC2(&subdev->entity, src_pad,
				    &dcmi->vdev->entity, 0,
				    MEDIA_LNK_FL_IMMUTABLE |
				    MEDIA_LNK_FL_ENABLED);
	if (ret)
		FUNC1(dcmi->dev, "Failed to create media pad link with subdev \"%s\"\n",
			subdev->name);
	else
		FUNC0(dcmi->dev, "DCMI is now linked to \"%s\"\n",
			subdev->name);

	return ret;
}