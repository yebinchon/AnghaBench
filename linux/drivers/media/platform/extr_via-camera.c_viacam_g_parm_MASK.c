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
struct via_camera {int /*<<< orphan*/  sensor; } ;
struct v4l2_streamparm {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_streamparm*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct via_camera* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *filp, void *priv,
		struct v4l2_streamparm *parm)
{
	struct via_camera *cam = FUNC2(filp);

	return FUNC0(FUNC1(filp), cam->sensor, parm);
}