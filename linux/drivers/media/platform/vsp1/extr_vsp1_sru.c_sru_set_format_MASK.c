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
struct vsp1_sru {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; int /*<<< orphan*/  pad; int /*<<< orphan*/  which; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SRU_PAD_SINK ; 
 int /*<<< orphan*/  SRU_PAD_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vsp1_sru*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 struct vsp1_sru* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_subdev_pad_config* FUNC4 (TYPE_1__*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 
 struct v4l2_mbus_framefmt* FUNC5 (TYPE_1__*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *subdev,
			  struct v4l2_subdev_pad_config *cfg,
			  struct v4l2_subdev_format *fmt)
{
	struct vsp1_sru *sru = FUNC3(subdev);
	struct v4l2_subdev_pad_config *config;
	struct v4l2_mbus_framefmt *format;
	int ret = 0;

	FUNC0(&sru->entity.lock);

	config = FUNC4(&sru->entity, cfg, fmt->which);
	if (!config) {
		ret = -EINVAL;
		goto done;
	}

	FUNC2(sru, config, fmt->pad, &fmt->format);

	format = FUNC5(&sru->entity, config, fmt->pad);
	*format = fmt->format;

	if (fmt->pad == SRU_PAD_SINK) {
		/* Propagate the format to the source pad. */
		format = FUNC5(&sru->entity, config,
						    SRU_PAD_SOURCE);
		*format = fmt->format;

		FUNC2(sru, config, SRU_PAD_SOURCE, format);
	}

done:
	FUNC1(&sru->entity.lock);
	return ret;
}