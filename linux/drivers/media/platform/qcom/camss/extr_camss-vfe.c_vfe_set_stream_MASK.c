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
struct vfe_line {int dummy; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct vfe_device* FUNC1 (struct vfe_line*) ; 
 struct vfe_line* FUNC2 (struct v4l2_subdev*) ; 
 int FUNC3 (struct vfe_line*) ; 
 int FUNC4 (struct vfe_line*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, int enable)
{
	struct vfe_line *line = FUNC2(sd);
	struct vfe_device *vfe = FUNC1(line);
	int ret;

	if (enable) {
		ret = FUNC4(line);
		if (ret < 0)
			FUNC0(vfe->camss->dev,
				"Failed to enable vfe outputs\n");
	} else {
		ret = FUNC3(line);
		if (ret < 0)
			FUNC0(vfe->camss->dev,
				"Failed to disable vfe outputs\n");
	}

	return ret;
}