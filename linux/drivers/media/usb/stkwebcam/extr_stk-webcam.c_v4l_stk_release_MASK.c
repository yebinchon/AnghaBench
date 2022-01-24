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
struct stk_camera {int /*<<< orphan*/  lock; int /*<<< orphan*/  interface; struct file* owner; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC4 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC5 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct file*) ; 
 struct stk_camera* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *fp)
{
	struct stk_camera *dev = FUNC8(fp);

	FUNC0(&dev->lock);
	if (dev->owner == fp) {
		FUNC4(dev);
		FUNC3(dev);
		FUNC2(dev, 0x0, 0x49); /* turn off the LED */
		FUNC5(dev);
		dev->owner = NULL;
	}

	FUNC6(dev->interface);
	FUNC1(&dev->lock);
	return FUNC7(fp);
}