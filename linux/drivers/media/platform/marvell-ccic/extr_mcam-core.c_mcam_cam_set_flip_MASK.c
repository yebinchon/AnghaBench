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
struct v4l2_control {int /*<<< orphan*/  value; int /*<<< orphan*/  id; } ;
struct mcam_camera {TYPE_1__* sensor; } ;
typedef  int /*<<< orphan*/  ctrl ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_CID_VFLIP ; 
 int /*<<< orphan*/  flip ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_control*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v4l2_control*) ; 

__attribute__((used)) static int FUNC2(struct mcam_camera *cam)
{
	struct v4l2_control ctrl;

	FUNC0(&ctrl, 0, sizeof(ctrl));
	ctrl.id = V4L2_CID_VFLIP;
	ctrl.value = flip;
	return FUNC1(NULL, cam->sensor->ctrl_handler, &ctrl);
}