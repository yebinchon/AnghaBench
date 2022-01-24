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
struct mlx5_cmd {int max_reg_cmds; int /*<<< orphan*/  alloc_lock; int /*<<< orphan*/  bitmask; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mlx5_cmd *cmd)
{
	unsigned long flags;
	int ret;

	FUNC2(&cmd->alloc_lock, flags);
	ret = FUNC1(&cmd->bitmask, cmd->max_reg_cmds);
	if (ret < cmd->max_reg_cmds)
		FUNC0(ret, &cmd->bitmask);
	FUNC3(&cmd->alloc_lock, flags);

	return ret < cmd->max_reg_cmds ? ret : -ENOMEM;
}