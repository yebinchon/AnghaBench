#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int initialized; int toggle; scalar_t__ pool; scalar_t__ hcr; scalar_t__ use_events; int /*<<< orphan*/  poll_sem; int /*<<< orphan*/  slave_cmd_mutex; int /*<<< orphan*/  switch_sem; } ;
struct TYPE_5__ {scalar_t__ vhcr; int /*<<< orphan*/  vhcr_dma; } ;
struct mlx4_priv {TYPE_3__ cmd; TYPE_1__ mfunc; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_4__* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_CMD_CLEANUP_HCR ; 
 int MLX4_CMD_CLEANUP_POOL ; 
 int MLX4_CMD_CLEANUP_STRUCT ; 
 int MLX4_CMD_CLEANUP_VHCR ; 
 scalar_t__ MLX4_HCR_BASE ; 
 int /*<<< orphan*/  MLX4_HCR_SIZE ; 
 int /*<<< orphan*/  MLX4_MAILBOX_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*) ; 
 scalar_t__ FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC8 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

int FUNC12(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC8(dev);
	int flags = 0;

	if (!priv->cmd.initialized) {
		FUNC2(&priv->cmd.switch_sem);
		FUNC9(&priv->cmd.slave_cmd_mutex);
		FUNC11(&priv->cmd.poll_sem, 1);
		priv->cmd.use_events = 0;
		priv->cmd.toggle     = 1;
		priv->cmd.initialized = 1;
		flags |= MLX4_CMD_CLEANUP_STRUCT;
	}

	if (!FUNC7(dev) && !priv->cmd.hcr) {
		priv->cmd.hcr = FUNC3(FUNC10(dev->persist->pdev,
					0) + MLX4_HCR_BASE, MLX4_HCR_SIZE);
		if (!priv->cmd.hcr) {
			FUNC5(dev, "Couldn't map command register\n");
			goto err;
		}
		flags |= MLX4_CMD_CLEANUP_HCR;
	}

	if (FUNC6(dev) && !priv->mfunc.vhcr) {
		priv->mfunc.vhcr = FUNC0(&dev->persist->pdev->dev,
						      PAGE_SIZE,
						      &priv->mfunc.vhcr_dma,
						      GFP_KERNEL);
		if (!priv->mfunc.vhcr)
			goto err;

		flags |= MLX4_CMD_CLEANUP_VHCR;
	}

	if (!priv->cmd.pool) {
		priv->cmd.pool = FUNC1("mlx4_cmd",
						 &dev->persist->pdev->dev,
						 MLX4_MAILBOX_SIZE,
						 MLX4_MAILBOX_SIZE, 0);
		if (!priv->cmd.pool)
			goto err;

		flags |= MLX4_CMD_CLEANUP_POOL;
	}

	return 0;

err:
	FUNC4(dev, flags);
	return -ENOMEM;
}