#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct vsp1_uds {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ code; scalar_t__ pad; void* max_height; void* min_height; void* max_width; void* min_width; scalar_t__ index; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int EINVAL ; 
 void* UDS_MAX_SIZE ; 
 void* UDS_MIN_SIZE ; 
 scalar_t__ UDS_PAD_SINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vsp1_uds* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**,void**) ; 
 struct v4l2_subdev_pad_config* FUNC4 (TYPE_1__*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC5 (TYPE_1__*,struct v4l2_subdev_pad_config*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *subdev,
			       struct v4l2_subdev_pad_config *cfg,
			       struct v4l2_subdev_frame_size_enum *fse)
{
	struct vsp1_uds *uds = FUNC2(subdev);
	struct v4l2_subdev_pad_config *config;
	struct v4l2_mbus_framefmt *format;
	int ret = 0;

	config = FUNC4(&uds->entity, cfg, fse->which);
	if (!config)
		return -EINVAL;

	format = FUNC5(&uds->entity, config,
					    UDS_PAD_SINK);

	FUNC0(&uds->entity.lock);

	if (fse->index || fse->code != format->code) {
		ret = -EINVAL;
		goto done;
	}

	if (fse->pad == UDS_PAD_SINK) {
		fse->min_width = UDS_MIN_SIZE;
		fse->max_width = UDS_MAX_SIZE;
		fse->min_height = UDS_MIN_SIZE;
		fse->max_height = UDS_MAX_SIZE;
	} else {
		FUNC3(format->width, &fse->min_width,
				  &fse->max_width);
		FUNC3(format->height, &fse->min_height,
				  &fse->max_height);
	}

done:
	FUNC1(&uds->entity.lock);
	return ret;
}