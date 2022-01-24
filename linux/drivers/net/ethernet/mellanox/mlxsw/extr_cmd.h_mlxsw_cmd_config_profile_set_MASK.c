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
struct mlxsw_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_CMD_MBOX_SIZE ; 
 int /*<<< orphan*/  MLXSW_CMD_OPCODE_CONFIG_PROFILE ; 
 int FUNC0 (struct mlxsw_core*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct mlxsw_core *mlxsw_core,
					       char *in_mbox)
{
	return FUNC0(mlxsw_core, MLXSW_CMD_OPCODE_CONFIG_PROFILE,
				 1, 0, in_mbox, MLXSW_CMD_MBOX_SIZE);
}