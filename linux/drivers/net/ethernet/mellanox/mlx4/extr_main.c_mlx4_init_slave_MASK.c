#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int max_cmds; int /*<<< orphan*/  slave_cmd_mutex; } ;
struct TYPE_5__ {TYPE_1__* comm; int /*<<< orphan*/  vhcr_dma; } ;
struct mlx4_priv {TYPE_3__ cmd; TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  slave_read; } ;

/* Variables and functions */
 int EIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_NA_OP ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_RESET ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_VHCR0 ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_VHCR1 ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_VHCR2 ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_VHCR_EN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX4_COMM_TIME ; 
 int MLX4_DELAY_RESET_SLAVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*) ; 
 struct mlx4_priv* FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pf_loading ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC6(dev);
	u64 dma = (u64) priv->mfunc.vhcr_dma;
	int ret_from_reset = 0;
	u32 slave_read;
	u32 cmd_channel_ver;

	if (FUNC1(&pf_loading)) {
		FUNC8(dev, "PF is not ready - Deferring probe\n");
		return -EPROBE_DEFER;
	}

	FUNC9(&priv->cmd.slave_cmd_mutex);
	priv->cmd.max_cmds = 1;
	if (FUNC2(dev)) {
		FUNC5(dev, "PF is not responsive, skipping initialization\n");
		goto err_offline;
	}

	FUNC7(dev);
	FUNC8(dev, "Sending reset\n");
	ret_from_reset = FUNC3(dev, MLX4_COMM_CMD_RESET, 0,
				       MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME);
	/* if we are in the middle of flr the slave will try
	 * NUM_OF_RESET_RETRIES times before leaving.*/
	if (ret_from_reset) {
		if (MLX4_DELAY_RESET_SLAVE == ret_from_reset) {
			FUNC8(dev, "slave is currently in the middle of FLR - Deferring probe\n");
			FUNC10(&priv->cmd.slave_cmd_mutex);
			return -EPROBE_DEFER;
		} else
			goto err;
	}

	/* check the driver version - the slave I/F revision
	 * must match the master's */
	slave_read = FUNC12(FUNC11(&priv->mfunc.comm->slave_read));
	cmd_channel_ver = FUNC4();

	if (FUNC0(cmd_channel_ver) !=
		FUNC0(slave_read)) {
		FUNC5(dev, "slave driver version is not supported by the master\n");
		goto err;
	}

	FUNC8(dev, "Sending vhcr0\n");
	if (FUNC3(dev, MLX4_COMM_CMD_VHCR0, dma >> 48,
			     MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME))
		goto err;
	if (FUNC3(dev, MLX4_COMM_CMD_VHCR1, dma >> 32,
			     MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME))
		goto err;
	if (FUNC3(dev, MLX4_COMM_CMD_VHCR2, dma >> 16,
			     MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME))
		goto err;
	if (FUNC3(dev, MLX4_COMM_CMD_VHCR_EN, dma,
			  MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME))
		goto err;

	FUNC10(&priv->cmd.slave_cmd_mutex);
	return 0;

err:
	FUNC3(dev, MLX4_COMM_CMD_RESET, 0, MLX4_COMM_CMD_NA_OP, 0);
err_offline:
	FUNC10(&priv->cmd.slave_cmd_mutex);
	return -EIO;
}