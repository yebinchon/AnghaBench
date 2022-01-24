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
struct si476x_radio {TYPE_1__* core; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  is_alive; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI476X_POWER_DOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 int FUNC3 (struct file*) ; 
 struct si476x_radio* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file)
{
	int err;
	struct si476x_radio *radio = FUNC4(file);

	if (FUNC2(file) &&
	    FUNC0(&radio->core->is_alive))
		FUNC1(radio->core,
					    SI476X_POWER_DOWN);

	err = FUNC3(file);

	return err;
}