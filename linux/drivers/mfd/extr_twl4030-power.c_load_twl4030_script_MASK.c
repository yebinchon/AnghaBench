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
typedef  scalar_t__ u8 ;
struct twl4030_script {scalar_t__ size; int flags; int /*<<< orphan*/  script; } ;
struct twl4030_power_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ END_OF_SCRIPT ; 
 int /*<<< orphan*/  R_SEQ_ADD_A2S ; 
 int TWL4030_SLEEP_SCRIPT ; 
 int TWL4030_WAKEUP12_SCRIPT ; 
 int TWL4030_WAKEUP3_SCRIPT ; 
 int TWL4030_WRST_SCRIPT ; 
 int /*<<< orphan*/  TWL_MODULE_PM_MASTER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct twl4030_power_data const*,scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const struct twl4030_power_data *pdata,
			       struct twl4030_script *tscript,
			       u8 address)
{
	int err;
	static int order;

	/* Make sure the script isn't going beyond last valid address (0x3f) */
	if ((address + tscript->size) > END_OF_SCRIPT) {
		FUNC0("TWL4030 scripts too big error\n");
		return -EINVAL;
	}

	err = FUNC6(address, tscript->script, tscript->size);
	if (err)
		goto out;

	if (tscript->flags & TWL4030_WRST_SCRIPT) {
		err = FUNC5(address);
		if (err)
			goto out;
	}
	if (tscript->flags & TWL4030_WAKEUP12_SCRIPT) {
		/* Reset any existing sleep script to avoid hangs on reboot */
		err = FUNC7(TWL_MODULE_PM_MASTER, END_OF_SCRIPT,
				       R_SEQ_ADD_A2S);
		if (err)
			goto out;

		err = FUNC3(pdata, address);
		if (err)
			goto out;
		order = 1;
	}
	if (tscript->flags & TWL4030_WAKEUP3_SCRIPT) {
		err = FUNC4(address);
		if (err)
			goto out;
	}
	if (tscript->flags & TWL4030_SLEEP_SCRIPT) {
		if (!order)
			FUNC1("TWL4030: Bad order of scripts (sleep script before wakeup) Leads to boot failure on some boards\n");
		err = FUNC2(address);
	}
out:
	return err;
}