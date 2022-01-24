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
struct vfe_line {int dummy; } ;
struct vfe_device {TYPE_2__* camss; TYPE_1__* ops; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* hw_version_read ) (struct vfe_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfe_device*,int /*<<< orphan*/ ) ; 
 struct vfe_device* FUNC1 (struct vfe_line*) ; 
 struct vfe_line* FUNC2 (struct v4l2_subdev*) ; 
 int FUNC3 (struct vfe_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct vfe_device*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, int on)
{
	struct vfe_line *line = FUNC2(sd);
	struct vfe_device *vfe = FUNC1(line);
	int ret;

	if (on) {
		ret = FUNC3(vfe);
		if (ret < 0)
			return ret;

		vfe->ops->hw_version_read(vfe, vfe->camss->dev);
	} else {
		FUNC4(vfe);
	}

	return 0;
}