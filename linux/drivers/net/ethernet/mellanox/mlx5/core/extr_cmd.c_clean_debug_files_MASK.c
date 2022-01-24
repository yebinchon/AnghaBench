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
struct mlx5_cmd_debug {int /*<<< orphan*/  dbg_root; } ;
struct TYPE_2__ {struct mlx5_cmd_debug dbg; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  mlx5_debugfs_root ; 

__attribute__((used)) static void FUNC2(struct mlx5_core_dev *dev)
{
	struct mlx5_cmd_debug *dbg = &dev->cmd.dbg;

	if (!mlx5_debugfs_root)
		return;

	FUNC1(dev);
	FUNC0(dbg->dbg_root);
}