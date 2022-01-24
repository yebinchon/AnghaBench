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
typedef  int /*<<< orphan*/  u16 ;
struct il_sensitivity_data {int dummy; } ;
struct il_sensitivity_cmd {int /*<<< orphan*/ * table; int /*<<< orphan*/  control; } ;
struct il_priv {int /*<<< orphan*/ * sensitivity_tbl; struct il_sensitivity_data sensitivity_data; } ;
struct il_host_cmd {int len; struct il_sensitivity_cmd* data; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  C_SENSITIVITY ; 
 int /*<<< orphan*/  C_SENSITIVITY_CONTROL_WORK_TBL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int HD_TBL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,struct il_sensitivity_data*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct il_priv*,struct il_host_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct il_sensitivity_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il)
{
	struct il_sensitivity_cmd cmd;
	struct il_sensitivity_data *data = NULL;
	struct il_host_cmd cmd_out = {
		.id = C_SENSITIVITY,
		.len = sizeof(struct il_sensitivity_cmd),
		.flags = CMD_ASYNC,
		.data = &cmd,
	};

	data = &(il->sensitivity_data);

	FUNC5(&cmd, 0, sizeof(cmd));

	FUNC1(il, data, &cmd.table[0]);

	/* Update uCode's "work" table, and copy it to DSP */
	cmd.control = C_SENSITIVITY_CONTROL_WORK_TBL;

	/* Don't send command to uCode if nothing has changed */
	if (!FUNC3
	    (&cmd.table[0], &(il->sensitivity_tbl[0]),
	     sizeof(u16) * HD_TBL_SIZE)) {
		FUNC0("No change in C_SENSITIVITY\n");
		return 0;
	}

	/* Copy table for comparison next time */
	FUNC4(&(il->sensitivity_tbl[0]), &(cmd.table[0]),
	       sizeof(u16) * HD_TBL_SIZE);

	return FUNC2(il, &cmd_out);
}