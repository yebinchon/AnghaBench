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
struct mcam_camera {int /*<<< orphan*/  s_mutex; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mcam_camera*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_power ; 
 int FUNC5 (struct mcam_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct file*) ; 
 int FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 struct mcam_camera* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *filp)
{
	struct mcam_camera *cam = FUNC9(filp);
	int ret;

	FUNC3(&cam->s_mutex);
	ret = FUNC7(filp);
	if (ret)
		goto out;
	if (FUNC6(filp)) {
		ret = FUNC5(cam, core, s_power, 1);
		if (ret)
			goto out;
		FUNC1(cam);
		FUNC0(cam);
		FUNC2(cam, 1);
	}
out:
	FUNC4(&cam->s_mutex);
	if (ret)
		FUNC8(filp);
	return ret;
}