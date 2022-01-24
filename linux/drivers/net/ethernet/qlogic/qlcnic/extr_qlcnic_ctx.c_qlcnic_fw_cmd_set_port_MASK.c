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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_CONFIG_PORT ; 
 int FUNC0 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_cmd_args*) ; 
 int FUNC2 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int
FUNC3(struct qlcnic_adapter *adapter, u32 config)
{
	int err;
	struct qlcnic_cmd_args cmd;

	err = FUNC0(&cmd, adapter, QLCNIC_CMD_CONFIG_PORT);
	if (err)
		return err;

	cmd.req.arg[1] = config;
	err = FUNC2(adapter, &cmd);
	FUNC1(&cmd);
	return err;
}