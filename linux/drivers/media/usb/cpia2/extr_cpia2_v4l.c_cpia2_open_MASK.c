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
struct file {int dummy; } ;
struct camera_data {int /*<<< orphan*/  v4l2_lock; scalar_t__ COM_len; scalar_t__ APP_len; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (struct camera_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*) ; 
 scalar_t__ FUNC2 (struct camera_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct file*) ; 
 int FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 struct camera_data* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct camera_data *cam = FUNC8(file);
	int retval;

	if (FUNC3(&cam->v4l2_lock))
		return -ERESTARTSYS;
	retval = FUNC6(file);
	if (retval)
		goto open_unlock;

	if (FUNC5(file)) {
		if (FUNC0(cam)) {
			FUNC7(file);
			retval = -ENOMEM;
			goto open_unlock;
		}

		/* reset the camera */
		if (FUNC2(cam) < 0) {
			FUNC7(file);
			retval = -EIO;
			goto open_unlock;
		}

		cam->APP_len = 0;
		cam->COM_len = 0;
	}

	FUNC1(cam);
open_unlock:
	FUNC4(&cam->v4l2_lock);
	return retval;
}