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
struct __vxge_hw_channel {size_t compl_index; size_t length; void** work_arr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2(struct __vxge_hw_channel *channel, void **dtrh)
{
	FUNC1(channel->compl_index < channel->length);

	*dtrh =	channel->work_arr[channel->compl_index];
	FUNC0(*dtrh);
}