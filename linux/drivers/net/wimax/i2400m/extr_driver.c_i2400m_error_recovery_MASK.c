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
struct i2400m {int /*<<< orphan*/  error_recovery; int /*<<< orphan*/  recovery_ws; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct i2400m *i2400m)
{
	if (FUNC0(1, &i2400m->error_recovery) == 1)
		FUNC2(&i2400m->recovery_ws);
	else
		FUNC1(&i2400m->error_recovery);
}