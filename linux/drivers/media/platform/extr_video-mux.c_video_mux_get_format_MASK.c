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
struct video_mux {int /*<<< orphan*/  lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int /*<<< orphan*/  which; int /*<<< orphan*/  pad; int /*<<< orphan*/  format; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct video_mux* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
			    struct v4l2_subdev_pad_config *cfg,
			    struct v4l2_subdev_format *sdformat)
{
	struct video_mux *vmux = FUNC3(sd);

	FUNC1(&vmux->lock);

	sdformat->format = *FUNC0(sd, cfg, sdformat->pad,
						       sdformat->which);

	FUNC2(&vmux->lock);

	return 0;
}