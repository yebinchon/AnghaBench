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
struct mlx5_cmd {int max_reg_cmds; int /*<<< orphan*/  sem; int /*<<< orphan*/  pages_sem; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx5_core_dev *dev)
{
	struct mlx5_cmd *cmd = &dev->cmd;
	int i;

	for (i = 0; i < cmd->max_reg_cmds; i++)
		while (FUNC0(&cmd->sem))
			FUNC1(dev);

	while (FUNC0(&cmd->pages_sem))
		FUNC1(dev);

	/* Unlock cmdif */
	FUNC2(&cmd->pages_sem);
	for (i = 0; i < cmd->max_reg_cmds; i++)
		FUNC2(&cmd->sem);
}