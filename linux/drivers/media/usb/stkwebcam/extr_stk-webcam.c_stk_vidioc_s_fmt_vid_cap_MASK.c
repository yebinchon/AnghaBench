#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sizeimage; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_7__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  palette; } ;
struct stk_camera {TYPE_3__ vsettings; int /*<<< orphan*/  frame_size; scalar_t__ owner; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  m; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct stk_camera*) ; 
 scalar_t__ FUNC1 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*) ; 
 int FUNC4 (struct stk_camera*) ; 
 TYPE_4__* stk_sizes ; 
 int FUNC5 (struct file*,struct v4l2_format*,int*) ; 
 struct stk_camera* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *filp,
		void *priv, struct v4l2_format *fmtd)
{
	int ret;
	int idx;
	struct stk_camera *dev = FUNC6(filp);

	if (dev == NULL)
		return -ENODEV;
	if (!FUNC0(dev))
		return -ENODEV;
	if (FUNC1(dev))
		return -EBUSY;
	if (dev->owner)
		return -EBUSY;
	ret = FUNC5(filp, fmtd, &idx);
	if (ret)
		return ret;

	dev->vsettings.palette = fmtd->fmt.pix.pixelformat;
	FUNC2(dev);
	dev->frame_size = fmtd->fmt.pix.sizeimage;
	dev->vsettings.mode = stk_sizes[idx].m;

	FUNC3(dev);
	return FUNC4(dev);
}