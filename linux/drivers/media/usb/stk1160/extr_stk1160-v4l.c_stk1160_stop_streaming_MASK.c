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
struct stk1160 {int /*<<< orphan*/  v4l_lock; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  keep_buffers ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC3 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC6 (struct stk1160*) ; 

__attribute__((used)) static int FUNC7(struct stk1160 *dev)
{
	if (FUNC0(&dev->v4l_lock))
		return -ERESTARTSYS;

	/*
	 * Once URBs are cancelled, the URB complete handler
	 * won't be running. This is required to safely release the
	 * current buffer (dev->isoc_ctl.buf).
	 */
	FUNC2(dev);

	/*
	 * It is possible to keep buffers around using a module parameter.
	 * This is intended to avoid memory fragmentation.
	 */
	if (!keep_buffers)
		FUNC5(dev);

	FUNC6(dev);

	FUNC3(dev);

	FUNC4("streaming stopped\n");

	FUNC1(&dev->v4l_lock);

	return 0;
}