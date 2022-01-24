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
struct __vxge_hw_channel {struct __vxge_hw_channel* orig_arr; struct __vxge_hw_channel* reserve_arr; struct __vxge_hw_channel* free_arr; struct __vxge_hw_channel* work_arr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct __vxge_hw_channel*) ; 

__attribute__((used)) static void FUNC1(struct __vxge_hw_channel *channel)
{
	FUNC0(channel->work_arr);
	FUNC0(channel->free_arr);
	FUNC0(channel->reserve_arr);
	FUNC0(channel->orig_arr);
	FUNC0(channel);
}