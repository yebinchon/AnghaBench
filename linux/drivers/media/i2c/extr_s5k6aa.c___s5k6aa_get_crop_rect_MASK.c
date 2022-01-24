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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct s5k6aa {int /*<<< orphan*/  sd; struct v4l2_rect ccd_rect; } ;
typedef  enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;

/* Variables and functions */
 int V4L2_SUBDEV_FORMAT_ACTIVE ; 
 int V4L2_SUBDEV_FORMAT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct v4l2_rect* FUNC1 (int /*<<< orphan*/ *,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct v4l2_rect *
FUNC2(struct s5k6aa *s5k6aa, struct v4l2_subdev_pad_config *cfg,
		       enum v4l2_subdev_format_whence which)
{
	if (which == V4L2_SUBDEV_FORMAT_ACTIVE)
		return &s5k6aa->ccd_rect;

	FUNC0(which != V4L2_SUBDEV_FORMAT_TRY);
	return FUNC1(&s5k6aa->sd, cfg, 0);
}