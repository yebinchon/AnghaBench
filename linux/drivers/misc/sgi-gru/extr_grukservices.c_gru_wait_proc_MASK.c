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
struct gru_control_block_status {int dummy; } ;

/* Variables and functions */
 int CBS_EXCEPTION ; 
 int FUNC0 (void*) ; 
 int FUNC1 (struct gru_control_block_status*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(void *cb)
{
	struct gru_control_block_status *gen = (void *)cb;
	int ret;

	ret = FUNC1(gen);
	if (ret == CBS_EXCEPTION)
		ret = FUNC0(cb);
	FUNC2();
	return ret;
}