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
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;
struct TYPE_2__ {struct v4l2_rect request; } ;
struct isp_res_device {TYPE_1__ crop; int /*<<< orphan*/  subdev; } ;
typedef  enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;

/* Variables and functions */
 int /*<<< orphan*/  RESZ_PAD_SINK ; 
 int V4L2_SUBDEV_FORMAT_TRY ; 
 struct v4l2_rect* FUNC0 (int /*<<< orphan*/ *,struct v4l2_subdev_pad_config*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct v4l2_rect *
FUNC1(struct isp_res_device *res, struct v4l2_subdev_pad_config *cfg,
		   enum v4l2_subdev_format_whence which)
{
	if (which == V4L2_SUBDEV_FORMAT_TRY)
		return FUNC0(&res->subdev, cfg, RESZ_PAD_SINK);
	else
		return &res->crop.request;
}