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
struct mux_control {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct mux_control*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mux_control *mux, unsigned int state)
{
	int ret;

	if (FUNC1(&mux->lock))
		return -EBUSY;

	ret = FUNC0(mux, state);

	if (ret < 0)
		FUNC2(&mux->lock);

	return ret;
}