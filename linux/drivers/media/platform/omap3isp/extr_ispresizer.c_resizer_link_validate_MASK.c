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
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int /*<<< orphan*/  entity; } ;
struct media_link {int dummy; } ;
struct isp_res_device {int dummy; } ;
struct isp_pipeline {int /*<<< orphan*/  max_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp_res_device*,int /*<<< orphan*/ *) ; 
 struct isp_pipeline* FUNC1 (int /*<<< orphan*/ *) ; 
 struct isp_res_device* FUNC2 (struct v4l2_subdev*) ; 
 int FUNC3 (struct v4l2_subdev*,struct media_link*,struct v4l2_subdev_format*,struct v4l2_subdev_format*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				 struct media_link *link,
				 struct v4l2_subdev_format *source_fmt,
				 struct v4l2_subdev_format *sink_fmt)
{
	struct isp_res_device *res = FUNC2(sd);
	struct isp_pipeline *pipe = FUNC1(&sd->entity);

	FUNC0(res, &pipe->max_rate);

	return FUNC3(sd, link,
						 source_fmt, sink_fmt);
}