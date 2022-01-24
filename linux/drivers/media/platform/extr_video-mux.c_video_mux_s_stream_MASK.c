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
struct video_mux {int active; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pads; } ;
struct v4l2_subdev {int /*<<< orphan*/  dev; TYPE_1__ entity; } ;
struct media_pad {int /*<<< orphan*/  entity; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct media_pad* FUNC2 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_stream ; 
 int FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct video_mux* FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC6(struct v4l2_subdev *sd, int enable)
{
	struct video_mux *vmux = FUNC5(sd);
	struct v4l2_subdev *upstream_sd;
	struct media_pad *pad;

	if (vmux->active == -1) {
		FUNC0(sd->dev, "Can not start streaming on inactive mux\n");
		return -EINVAL;
	}

	pad = FUNC2(&sd->entity.pads[vmux->active]);
	if (!pad) {
		FUNC0(sd->dev, "Failed to find remote source pad\n");
		return -ENOLINK;
	}

	if (!FUNC1(pad->entity)) {
		FUNC0(sd->dev, "Upstream entity is not a v4l2 subdev\n");
		return -ENODEV;
	}

	upstream_sd = FUNC3(pad->entity);

	return FUNC4(upstream_sd, video, s_stream, enable);
}