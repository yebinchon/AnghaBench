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
struct mcam_camera {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ S_IDLE ; 
 scalar_t__ S_NOTREADY ; 
 int FUNC0 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mcam_camera *cam)
{
	int ret;

	if (cam->state != S_NOTREADY)
		FUNC1(cam, "Cam init with device in funky state %d",
				cam->state);
	ret = FUNC0(cam);
	/* Get/set parameters? */
	cam->state = S_IDLE;
	return ret;
}