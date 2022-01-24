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
struct v4l2_mbus_framefmt {int dummy; } ;
struct isp_res_device {int /*<<< orphan*/  lock; scalar_t__ applycrop; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  RESZ_PAD_SINK ; 
 int /*<<< orphan*/  RESZ_PAD_SOURCE ; 
 int /*<<< orphan*/  V4L2_SUBDEV_FORMAT_ACTIVE ; 
 struct v4l2_mbus_framefmt* FUNC0 (struct isp_res_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_res_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_res_device*,struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct isp_res_device *res)
{
	struct v4l2_mbus_framefmt *informat, *outformat;
	unsigned long flags;

	if (FUNC1(&res->wait, &res->stopping))
		return;

	FUNC4(&res->lock, flags);

	if (res->applycrop) {
		outformat = FUNC0(res, NULL, RESZ_PAD_SOURCE,
					      V4L2_SUBDEV_FORMAT_ACTIVE);
		informat = FUNC0(res, NULL, RESZ_PAD_SINK,
					      V4L2_SUBDEV_FORMAT_ACTIVE);
		FUNC3(res, informat, outformat);
		res->applycrop = 0;
	}

	FUNC5(&res->lock, flags);

	FUNC2(res);
}