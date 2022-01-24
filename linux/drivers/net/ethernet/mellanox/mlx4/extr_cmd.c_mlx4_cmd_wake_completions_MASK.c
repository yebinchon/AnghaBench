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
struct TYPE_2__ {int max_cmds; int /*<<< orphan*/  context_lock; struct mlx4_cmd_context* context; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_context {int /*<<< orphan*/  done; int /*<<< orphan*/  result; int /*<<< orphan*/  fw_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STAT_INTERNAL_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);
	struct mlx4_cmd_context *context;
	int i;

	FUNC3(&priv->cmd.context_lock);
	if (priv->cmd.context) {
		for (i = 0; i < priv->cmd.max_cmds; ++i) {
			context = &priv->cmd.context[i];
			context->fw_status = CMD_STAT_INTERNAL_ERR;
			context->result    =
				FUNC2(CMD_STAT_INTERNAL_ERR);
			FUNC0(&context->done);
		}
	}
	FUNC4(&priv->cmd.context_lock);
}