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
struct venus_core {scalar_t__ use_tz; } ;

/* Variables and functions */
 int /*<<< orphan*/  VENUS_PAS_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct venus_core*) ; 

int FUNC2(struct venus_core *core)
{
	int ret;

	if (core->use_tz)
		ret = FUNC0(VENUS_PAS_ID);
	else
		ret = FUNC1(core);

	return ret;
}