#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  function; } ;
struct v4l2_subdev {TYPE_2__ entity; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * internal_ops; } ;
struct v4l2_device {int dummy; } ;
struct media_pad {int /*<<< orphan*/  flags; } ;
struct ispif_device {int line_num; TYPE_1__* line; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct v4l2_subdev subdev; struct media_pad* pads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEDIA_ENT_F_IO_V4L ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SINK ; 
 int /*<<< orphan*/  MEDIA_PAD_FL_SOURCE ; 
 char* MSM_ISPIF_NAME ; 
 int /*<<< orphan*/  MSM_ISPIF_PADS_NUM ; 
 size_t MSM_ISPIF_PAD_SINK ; 
 size_t MSM_ISPIF_PAD_SRC ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FL_HAS_DEVNODE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ispif_media_ops ; 
 int /*<<< orphan*/  ispif_v4l2_internal_ops ; 
 int /*<<< orphan*/  ispif_v4l2_ops ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,struct media_pad*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 struct device* FUNC6 (struct ispif_device*) ; 
 int FUNC7 (struct v4l2_device*,struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 

int FUNC11(struct ispif_device *ispif,
				struct v4l2_device *v4l2_dev)
{
	struct device *dev = FUNC6(ispif);
	int ret;
	int i;

	for (i = 0; i < ispif->line_num; i++) {
		struct v4l2_subdev *sd = &ispif->line[i].subdev;
		struct media_pad *pads = ispif->line[i].pads;

		FUNC10(sd, &ispif_v4l2_ops);
		sd->internal_ops = &ispif_v4l2_internal_ops;
		sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
		FUNC5(sd->name, FUNC0(sd->name), "%s%d",
			 MSM_ISPIF_NAME, i);
		FUNC9(sd, &ispif->line[i]);

		ret = FUNC2(sd, NULL);
		if (ret < 0) {
			FUNC1(dev, "Failed to init format: %d\n", ret);
			goto error;
		}

		pads[MSM_ISPIF_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
		pads[MSM_ISPIF_PAD_SRC].flags = MEDIA_PAD_FL_SOURCE;

		sd->entity.function = MEDIA_ENT_F_IO_V4L;
		sd->entity.ops = &ispif_media_ops;
		ret = FUNC4(&sd->entity, MSM_ISPIF_PADS_NUM,
					     pads);
		if (ret < 0) {
			FUNC1(dev, "Failed to init media entity: %d\n", ret);
			goto error;
		}

		ret = FUNC7(v4l2_dev, sd);
		if (ret < 0) {
			FUNC1(dev, "Failed to register subdev: %d\n", ret);
			FUNC3(&sd->entity);
			goto error;
		}
	}

	return 0;

error:
	for (i--; i >= 0; i--) {
		struct v4l2_subdev *sd = &ispif->line[i].subdev;

		FUNC8(sd);
		FUNC3(&sd->entity);
	}

	return ret;
}