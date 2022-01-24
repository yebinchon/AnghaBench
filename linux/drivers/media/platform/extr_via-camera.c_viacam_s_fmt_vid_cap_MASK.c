#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct via_format {int /*<<< orphan*/  mbus_code; } ;
struct TYPE_5__ {int /*<<< orphan*/  pixelformat; } ;
struct via_camera {scalar_t__ opstate; int /*<<< orphan*/  mbus_code; TYPE_2__ sensor_format; TYPE_2__ user_format; } ;
struct TYPE_4__ {TYPE_2__ pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ S_IDLE ; 
 struct via_format* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct via_camera*) ; 
 int FUNC2 (struct via_camera*) ; 
 int FUNC3 (struct via_camera*,TYPE_2__*,TYPE_2__*) ; 
 struct via_camera* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *filp, void *priv,
		struct v4l2_format *fmt)
{
	struct via_camera *cam = FUNC4(filp);
	int ret;
	struct v4l2_format sfmt;
	struct via_format *f = FUNC0(fmt->fmt.pix.pixelformat);

	/*
	 * Camera must be idle or we can't mess with the
	 * video setup.
	 */
	if (cam->opstate != S_IDLE)
		return -EBUSY;
	/*
	 * Let the sensor code look over and tweak the
	 * requested formatting.
	 */
	ret = FUNC3(cam, &fmt->fmt.pix, &sfmt.fmt.pix);
	if (ret)
		return ret;
	/*
	 * OK, let's commit to the new format.
	 */
	cam->user_format = fmt->fmt.pix;
	cam->sensor_format = sfmt.fmt.pix;
	cam->mbus_code = f->mbus_code;
	ret = FUNC2(cam);
	if (!ret)
		ret = FUNC1(cam);
	return ret;
}