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
struct r592_device {int /*<<< orphan*/  io_thread_lock; int /*<<< orphan*/  req; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENXIO ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct r592_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	int error;
	struct r592_device *dev = (struct r592_device *)data;
	unsigned long flags;

	while (!FUNC2()) {
		FUNC7(&dev->io_thread_lock, flags);
		FUNC6(TASK_INTERRUPTIBLE);
		error = FUNC3(dev->host, &dev->req);
		FUNC8(&dev->io_thread_lock, flags);

		if (error) {
			if (error == -ENXIO || error == -EAGAIN) {
				FUNC1("IO: done IO, sleeping");
			} else {
				FUNC0("IO: unknown error from "
					"memstick_next_req %d", error);
			}

			if (FUNC2())
				FUNC6(TASK_RUNNING);

			FUNC5();
		} else {
			FUNC6(TASK_RUNNING);
			FUNC4(dev);
		}
	}
	return 0;
}