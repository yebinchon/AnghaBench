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
struct solo_dev {int /*<<< orphan*/  disp_thread_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long ERESTARTSYS ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(void *data)
{
	struct solo_dev *solo_dev = data;
	FUNC0(wait, current);

	FUNC5();
	FUNC1(&solo_dev->disp_thread_wait, &wait);

	for (;;) {
		long timeout = FUNC4(HZ);

		if (timeout == -ERESTARTSYS || FUNC2())
			break;
		FUNC6(solo_dev);
		FUNC7();
	}

	FUNC3(&solo_dev->disp_thread_wait, &wait);

	return 0;
}