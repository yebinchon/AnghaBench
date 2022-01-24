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
struct stk_camera {int /*<<< orphan*/  lock; int /*<<< orphan*/  interface; scalar_t__ first_init; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct stk_camera*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct file*) ; 
 struct stk_camera* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *fp)
{
	struct stk_camera *dev = FUNC6(fp);
	int err;

	if (dev == NULL || !FUNC0(dev))
		return -ENXIO;

	if (FUNC1(&dev->lock))
		return -ERESTARTSYS;
	if (!dev->first_init)
		FUNC3(dev, 0x0, 0x24);
	else
		dev->first_init = 0;

	err = FUNC5(fp);
	if (!err)
		FUNC4(dev->interface);
	FUNC2(&dev->lock);
	return err;
}