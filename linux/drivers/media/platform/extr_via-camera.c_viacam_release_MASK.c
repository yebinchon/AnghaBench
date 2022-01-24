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
struct via_camera {int /*<<< orphan*/  lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct via_camera*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct via_camera* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *filp)
{
	struct via_camera *cam = FUNC6(filp);
	bool last_open;

	FUNC1(&cam->lock);
	last_open = FUNC3(filp);
	FUNC0(filp, NULL);
	/*
	 * Last one out needs to turn out the lights.
	 */
	if (last_open) {
		FUNC4(cam);
		FUNC5();
	}
	FUNC2(&cam->lock);
	return 0;
}