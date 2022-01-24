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
struct mcam_camera {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  (* plat_power_down ) (struct mcam_camera*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  C1_PWRDWN ; 
 int /*<<< orphan*/  REG_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (struct mcam_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mcam_camera*) ; 

__attribute__((used)) static void FUNC4(struct mcam_camera *cam)
{
	unsigned long flags;

	FUNC1(&cam->dev_lock, flags);
	/*
	 * School of hard knocks department: be sure we do any register
	 * twiddling on the controller *before* calling the platform
	 * power down routine.
	 */
	FUNC0(cam, REG_CTRL1, C1_PWRDWN);
	if (cam->plat_power_down)
		cam->plat_power_down(cam);
	FUNC2(&cam->dev_lock, flags);
}