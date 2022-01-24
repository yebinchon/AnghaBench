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
struct mcam_camera {scalar_t__ buffer_mode; int /*<<< orphan*/  s_mutex; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ B_vmalloc ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 scalar_t__ alloc_bufs_at_read ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_power ; 
 int /*<<< orphan*/  FUNC6 (struct mcam_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct file*) ; 
 struct mcam_camera* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *filp)
{
	struct mcam_camera *cam = FUNC8(filp);
	bool last_open;

	FUNC4(&cam->s_mutex);
	last_open = FUNC7(filp);
	FUNC0(filp, NULL);
	if (last_open) {
		FUNC2(cam);
		FUNC6(cam, core, s_power, 0);
		FUNC1(cam);
		if (cam->buffer_mode == B_vmalloc && alloc_bufs_at_read)
			FUNC3(cam);
	}

	FUNC5(&cam->s_mutex);
	return 0;
}