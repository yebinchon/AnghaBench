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
typedef  int u32 ;
struct hermes {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* init_cmd_wait ) (struct hermes*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EVACK ; 
 int HERMES_CMD_INIT ; 
 int HERMES_PROGRAM_ENABLE_VOLATILE ; 
 int FUNC0 (struct hermes*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hermes*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct hermes*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hermes*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hermes*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hermes *hw, u32 offset)
{
	int err;

	/* Disable interrupts?*/
	/*hw->inten = 0x0;*/
	/*hermes_write_regn(hw, INTEN, 0);*/
	/*hermes_set_irqmask(hw, 0);*/

	/* Acknowledge any outstanding command */
	FUNC1(hw, EVACK, 0xFFFF);

	/* Using init_cmd_wait rather than cmd_wait */
	err = hw->ops->init_cmd_wait(hw,
				     0x0100 | HERMES_CMD_INIT,
				     0, 0, 0, NULL);
	if (err)
		return err;

	err = hw->ops->init_cmd_wait(hw,
				     0x0000 | HERMES_CMD_INIT,
				     0, 0, 0, NULL);
	if (err)
		return err;

	err = FUNC0(hw, 1);
	FUNC2("AUX enable returned %d\n", err);

	if (err)
		return err;

	FUNC2("Enabling volatile, EP 0x%08x\n", offset);
	err = hw->ops->init_cmd_wait(hw,
				     HERMES_PROGRAM_ENABLE_VOLATILE,
				     offset & 0xFFFFu,
				     offset >> 16,
				     0,
				     NULL);
	FUNC2("PROGRAM_ENABLE returned %d\n", err);

	return err;
}