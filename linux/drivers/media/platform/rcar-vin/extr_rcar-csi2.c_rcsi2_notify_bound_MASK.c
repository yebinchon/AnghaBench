#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int /*<<< orphan*/  entity; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  fwnode; } ;
struct v4l2_async_subdev {TYPE_2__ match; } ;
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  entity; } ;
struct rcar_csi2 {TYPE_1__ subdev; int /*<<< orphan*/  dev; struct v4l2_subdev* remote; } ;

/* Variables and functions */
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_LNK_FL_IMMUTABLE ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rcar_csi2* FUNC4 (struct v4l2_async_notifier*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_async_notifier *notifier,
			      struct v4l2_subdev *subdev,
			      struct v4l2_async_subdev *asd)
{
	struct rcar_csi2 *priv = FUNC4(notifier);
	int pad;

	pad = FUNC3(&subdev->entity, asd->match.fwnode,
					  MEDIA_PAD_FL_SOURCE);
	if (pad < 0) {
		FUNC1(priv->dev, "Failed to find pad for %s\n", subdev->name);
		return pad;
	}

	priv->remote = subdev;

	FUNC0(priv->dev, "Bound %s pad: %d\n", subdev->name, pad);

	return FUNC2(&subdev->entity, pad,
				     &priv->subdev.entity, 0,
				     MEDIA_LNK_FL_ENABLED |
				     MEDIA_LNK_FL_IMMUTABLE);
}