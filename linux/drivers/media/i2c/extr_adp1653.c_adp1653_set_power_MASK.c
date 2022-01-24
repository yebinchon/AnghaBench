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
struct v4l2_subdev {int dummy; } ;
struct adp1653_flash {int power_count; int /*<<< orphan*/  power_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct adp1653_flash*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct adp1653_flash* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int
FUNC5(struct v4l2_subdev *subdev, int on)
{
	struct adp1653_flash *flash = FUNC4(subdev);
	int ret = 0;

	FUNC2(&flash->power_lock);

	/* If the power count is modified from 0 to != 0 or from != 0 to 0,
	 * update the power state.
	 */
	if (flash->power_count == !on) {
		ret = FUNC1(flash, !!on);
		if (ret < 0)
			goto done;
	}

	/* Update the power count. */
	flash->power_count += on ? 1 : -1;
	FUNC0(flash->power_count < 0);

done:
	FUNC3(&flash->power_lock);
	return ret;
}