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
struct TYPE_2__ {int max_cmds; int /*<<< orphan*/  slave_cmd_mutex; int /*<<< orphan*/  switch_sem; int /*<<< orphan*/  poll_sem; int /*<<< orphan*/ * context; int /*<<< orphan*/  event_sem; scalar_t__ use_events; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC4(dev);
	int i;

	if (FUNC3(dev))
		FUNC5(&priv->cmd.slave_cmd_mutex);
	FUNC1(&priv->cmd.switch_sem);
	priv->cmd.use_events = 0;

	for (i = 0; i < priv->cmd.max_cmds; ++i)
		FUNC0(&priv->cmd.event_sem);

	FUNC2(priv->cmd.context);
	priv->cmd.context = NULL;

	FUNC7(&priv->cmd.poll_sem);
	FUNC8(&priv->cmd.switch_sem);
	if (FUNC3(dev))
		FUNC6(&priv->cmd.slave_cmd_mutex);
}