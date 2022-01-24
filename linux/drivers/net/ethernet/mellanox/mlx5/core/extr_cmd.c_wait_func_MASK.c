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
struct mlx5_cmd {scalar_t__ mode; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;
struct mlx5_cmd_work_ent {int ret; unsigned long idx; int /*<<< orphan*/  status; int /*<<< orphan*/  in; int /*<<< orphan*/  done; scalar_t__ polling; } ;

/* Variables and functions */
 scalar_t__ CMD_MODE_POLLING ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MLX5_CMD_TIMEOUT_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct mlx5_core_dev *dev, struct mlx5_cmd_work_ent *ent)
{
	unsigned long timeout = FUNC5(MLX5_CMD_TIMEOUT_MSEC);
	struct mlx5_cmd *cmd = &dev->cmd;
	int err;

	if (cmd->mode == CMD_MODE_POLLING || ent->polling) {
		FUNC7(&ent->done);
	} else if (!FUNC8(&ent->done, timeout)) {
		ent->ret = -ETIMEDOUT;
		FUNC1(dev, 1UL << ent->idx, true);
	}

	err = ent->ret;

	if (err == -ETIMEDOUT) {
		FUNC4(dev, "%s(0x%x) timeout. Will cause a leak of a command resource\n",
			       FUNC2(FUNC6(ent->in)),
			       FUNC6(ent->in));
	}
	FUNC3(dev, "err %d, delivery status %s(%d)\n",
		      err, FUNC0(ent->status), ent->status);

	return err;
}