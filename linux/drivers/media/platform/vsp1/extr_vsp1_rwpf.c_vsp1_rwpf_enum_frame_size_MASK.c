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
struct vsp1_rwpf {int /*<<< orphan*/  max_height; int /*<<< orphan*/  max_width; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {int dummy; } ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RWPF_MIN_HEIGHT ; 
 int /*<<< orphan*/  RWPF_MIN_WIDTH ; 
 struct vsp1_rwpf* FUNC0 (struct v4l2_subdev*) ; 
 int FUNC1 (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_frame_size_enum*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *subdev,
				     struct v4l2_subdev_pad_config *cfg,
				     struct v4l2_subdev_frame_size_enum *fse)
{
	struct vsp1_rwpf *rwpf = FUNC0(subdev);

	return FUNC1(subdev, cfg, fse, RWPF_MIN_WIDTH,
					   RWPF_MIN_HEIGHT, rwpf->max_width,
					   rwpf->max_height);
}