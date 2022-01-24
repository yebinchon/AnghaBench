#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vpfe_device {size_t std_index; } ;
struct v4l2_fract {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct v4l2_fract pixelaspect; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 struct vpfe_device* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct vpfe_device*,char*) ; 
 TYPE_1__* vpfe_standards ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			      int type, struct v4l2_fract *f)
{
	struct vpfe_device *vpfe = FUNC1(file);

	FUNC2(2, vpfe, "vpfe_g_pixelaspect\n");

	if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
	    vpfe->std_index >= FUNC0(vpfe_standards))
		return -EINVAL;

	*f = vpfe_standards[vpfe->std_index].pixelaspect;

	return 0;
}