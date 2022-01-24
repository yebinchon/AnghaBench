#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* grab_buffer; int /*<<< orphan*/  grab_fbuffer; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ MEYE_BUF_DONE ; 
 scalar_t__ MEYE_BUF_UNUSED ; 
 scalar_t__ MEYE_BUF_USING ; 
 int /*<<< orphan*/  gbufsize ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ meye ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int *len)
{
	if (!meye.grab_fbuffer)
		return -EINVAL;

	if (meye.grab_buffer[0].state != MEYE_BUF_UNUSED)
		return -EBUSY;

	FUNC2(&meye.lock);
	meye.grab_buffer[0].state = MEYE_BUF_USING;
	*len = -1;

	while (*len == -1) {
		FUNC1();
		*len = FUNC0(meye.grab_fbuffer, gbufsize);
	}

	meye.grab_buffer[0].state = MEYE_BUF_DONE;
	FUNC3(&meye.lock);
	return 0;
}