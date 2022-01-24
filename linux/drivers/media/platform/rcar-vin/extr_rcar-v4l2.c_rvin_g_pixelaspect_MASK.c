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
struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int dummy; } ;
struct rvin_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  g_pixelaspect ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_fract*) ; 
 int /*<<< orphan*/  video ; 
 struct rvin_dev* FUNC1 (struct file*) ; 
 struct v4l2_subdev* FUNC2 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			      int type, struct v4l2_fract *f)
{
	struct rvin_dev *vin = FUNC1(file);
	struct v4l2_subdev *sd = FUNC2(vin);

	if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
		return -EINVAL;

	return FUNC0(sd, video, g_pixelaspect, f);
}