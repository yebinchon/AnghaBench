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
struct video_mux {int /*<<< orphan*/  lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {unsigned int num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct v4l2_mbus_framefmt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct v4l2_mbus_framefmt* FUNC2 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ; 
 struct video_mux* FUNC3 (struct v4l2_subdev*) ; 
 struct v4l2_mbus_framefmt video_mux_format_mbus_default ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			      struct v4l2_subdev_pad_config *cfg)
{
	struct video_mux *vmux = FUNC3(sd);
	struct v4l2_mbus_framefmt *mbusformat;
	unsigned int i;

	FUNC0(&vmux->lock);

	for (i = 0; i < sd->entity.num_pads; i++) {
		mbusformat = FUNC2(sd, cfg, i);
		*mbusformat = video_mux_format_mbus_default;
	}

	FUNC1(&vmux->lock);

	return 0;
}