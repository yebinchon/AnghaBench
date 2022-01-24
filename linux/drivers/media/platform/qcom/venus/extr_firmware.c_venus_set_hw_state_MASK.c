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
struct venus_core {scalar_t__ base; scalar_t__ use_tz; } ;

/* Variables and functions */
 scalar_t__ WRAPPER_A9SS_SW_RESET ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct venus_core*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

int FUNC3(struct venus_core *core, bool resume)
{
	if (core->use_tz)
		return FUNC0(resume, 0);

	if (resume)
		FUNC1(core);
	else
		FUNC2(1, core->base + WRAPPER_A9SS_SW_RESET);

	return 0;
}