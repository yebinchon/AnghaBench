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
struct mlx5_cmd {int /*<<< orphan*/  pool; int /*<<< orphan*/  wq; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,struct mlx5_cmd*) ; 

void FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_cmd *cmd = &dev->cmd;

	FUNC0(dev);
	FUNC2(cmd->wq);
	FUNC1(dev);
	FUNC4(dev, cmd);
	FUNC3(cmd->pool);
}