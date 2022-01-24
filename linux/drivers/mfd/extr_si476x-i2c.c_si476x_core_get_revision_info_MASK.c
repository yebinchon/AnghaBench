#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * minor; int /*<<< orphan*/  major; } ;
struct si476x_func_info {TYPE_1__ firmware; int /*<<< orphan*/  func; } ;
struct si476x_core {int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI476X_POWER_DOWN ; 
 int /*<<< orphan*/  SI476X_POWER_UP_FULL ; 
 int FUNC0 (struct si476x_core*,struct si476x_func_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct si476x_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct si476x_core*) ; 
 int FUNC3 (struct si476x_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct si476x_core*) ; 

__attribute__((used)) static int FUNC5(struct si476x_core *core)
{
	int rval;
	struct si476x_func_info info;

	FUNC2(core);
	rval = FUNC3(core, SI476X_POWER_UP_FULL);
	if (rval < 0)
		goto exit;

	rval = FUNC0(core, &info);
	if (rval < 0)
		goto power_down;

	core->revision = FUNC1(core, info.func,
						       info.firmware.major,
						       info.firmware.minor[0],
						       info.firmware.minor[1]);
power_down:
	FUNC3(core, SI476X_POWER_DOWN);
exit:
	FUNC4(core);

	return rval;
}