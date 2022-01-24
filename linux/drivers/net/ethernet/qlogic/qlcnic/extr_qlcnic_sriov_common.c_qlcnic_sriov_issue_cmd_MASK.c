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
struct qlcnic_cmd_args {scalar_t__ type; } ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ QLC_83XX_MBX_CMD_NO_WAIT ; 
 int FUNC0 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 int FUNC1 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static int FUNC2(struct qlcnic_adapter *adapter,
				  struct qlcnic_cmd_args *cmd)
{
	if (cmd->type == QLC_83XX_MBX_CMD_NO_WAIT)
		return FUNC1(adapter, cmd);
	else
		return FUNC0(adapter, cmd);
}