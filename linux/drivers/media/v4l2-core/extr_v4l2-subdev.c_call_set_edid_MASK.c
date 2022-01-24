#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev_edid {int dummy; } ;
struct v4l2_subdev {TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* pad; } ;
struct TYPE_3__ {int (* set_edid ) (struct v4l2_subdev*,struct v4l2_subdev_edid*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct v4l2_subdev*,struct v4l2_subdev_edid*) ; 
 int FUNC1 (struct v4l2_subdev*,struct v4l2_subdev_edid*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, struct v4l2_subdev_edid *edid)
{
	return FUNC0(sd, edid) ? : sd->ops->pad->set_edid(sd, edid);
}