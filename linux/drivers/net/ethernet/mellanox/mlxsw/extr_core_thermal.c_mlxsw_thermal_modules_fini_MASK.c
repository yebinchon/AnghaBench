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
struct mlxsw_thermal {int /*<<< orphan*/ * tz_module_arr; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mlxsw_thermal *thermal)
{
	unsigned int module_count = FUNC1(thermal->core);
	int i;

	if (!FUNC2(thermal->core))
		return;

	for (i = module_count - 1; i >= 0; i--)
		FUNC3(&thermal->tz_module_arr[i]);
	FUNC0(thermal->tz_module_arr);
}