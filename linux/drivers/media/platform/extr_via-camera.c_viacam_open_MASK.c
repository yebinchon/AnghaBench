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
struct via_camera {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CONFIG_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 int FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct via_camera*) ; 
 int FUNC7 () ; 
 struct via_camera* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *filp)
{
	struct via_camera *cam = FUNC8(filp);
	int ret;

	/*
	 * Note the new user.  If this is the first one, we'll also
	 * need to power up the sensor.
	 */
	FUNC0(&cam->lock);
	ret = FUNC4(filp);
	if (ret)
		goto out;
	if (FUNC3(filp)) {
		ret = FUNC7();

		if (ret) {
			FUNC5(filp);
			goto out;
		}
		FUNC6(cam);
		FUNC2(CF_CONFIG_NEEDED, &cam->flags);
	}
out:
	FUNC1(&cam->lock);
	return ret;
}