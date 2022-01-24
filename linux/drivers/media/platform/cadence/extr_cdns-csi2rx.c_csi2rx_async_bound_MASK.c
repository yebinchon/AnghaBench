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
struct v4l2_subdev {int /*<<< orphan*/  entity; int /*<<< orphan*/  name; int /*<<< orphan*/  fwnode; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {struct v4l2_subdev* sd; } ;
struct TYPE_2__ {int /*<<< orphan*/  entity; } ;
struct csi2rx_priv {scalar_t__ source_pad; TYPE_1__ subdev; struct v4l2_subdev* source_subdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MEDIA_LNK_FL_ENABLED ; 
 int MEDIA_LNK_FL_IMMUTABLE ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct csi2rx_priv* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_async_notifier *notifier,
			      struct v4l2_subdev *s_subdev,
			      struct v4l2_async_subdev *asd)
{
	struct v4l2_subdev *subdev = notifier->sd;
	struct csi2rx_priv *csi2rx = FUNC4(subdev);

	csi2rx->source_pad = FUNC3(&s_subdev->entity,
							 s_subdev->fwnode,
							 MEDIA_PAD_FL_SOURCE);
	if (csi2rx->source_pad < 0) {
		FUNC1(csi2rx->dev, "Couldn't find output pad for subdev %s\n",
			s_subdev->name);
		return csi2rx->source_pad;
	}

	csi2rx->source_subdev = s_subdev;

	FUNC0(csi2rx->dev, "Bound %s pad: %d\n", s_subdev->name,
		csi2rx->source_pad);

	return FUNC2(&csi2rx->source_subdev->entity,
				     csi2rx->source_pad,
				     &csi2rx->subdev.entity, 0,
				     MEDIA_LNK_FL_ENABLED |
				     MEDIA_LNK_FL_IMMUTABLE);
}