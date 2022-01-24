#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct si476x_radio {TYPE_2__* core; int /*<<< orphan*/  ctrl_handler; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  func; } ;
struct TYPE_6__ {TYPE_1__ power_up_parameters; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI476X_POWER_DOWN ; 
 int /*<<< orphan*/  SI476X_POWER_UP_FULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct si476x_radio*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct si476x_radio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct file*) ; 
 int FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 struct si476x_radio* FUNC9 (struct file*) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct si476x_radio *radio = FUNC9(file);
	int err;

	err = FUNC7(file);
	if (err)
		return err;

	if (FUNC6(file)) {
		FUNC0(radio->core);
		err = FUNC1(radio->core,
						  SI476X_POWER_UP_FULL);
		if (err < 0)
			goto done;

		err = FUNC3(radio,
							radio->core->power_up_parameters.func);
		if (err < 0)
			goto power_down;

		err = FUNC4(radio,
					   radio->core->power_up_parameters.func);
		if (err < 0)
			goto power_down;

		FUNC2(radio->core);
		/*Must be done after si476x_core_unlock to prevent a deadlock*/
		FUNC5(&radio->ctrl_handler);
	}

	return err;

power_down:
	FUNC1(radio->core,
				    SI476X_POWER_DOWN);
done:
	FUNC2(radio->core);
	FUNC8(file);

	return err;
}