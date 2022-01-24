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
struct TYPE_2__ {int flags2; } ;
struct mlx4_dev {int flags; TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_MAD_DEMUX ; 
 int /*<<< orphan*/  MLX4_CMD_MAD_DEMUX_CONFIG ; 
 int /*<<< orphan*/  MLX4_CMD_MAD_DEMUX_QUERY_RESTR ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int MLX4_DEV_CAP_FLAG2_MAD_DEMUX ; 
 int MLX4_FLAG_SECURE_HOST ; 
 struct mlx4_cmd_mailbox* FUNC1 (struct mlx4_dev*) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 int FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*,...) ; 

int FUNC7(struct mlx4_dev *dev)
{
	struct mlx4_cmd_mailbox *mailbox;
	int err;

	/* Check if mad_demux is supported */
	if (!(dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_MAD_DEMUX))
		return 0;

	mailbox = FUNC1(dev);
	if (FUNC0(mailbox)) {
		FUNC6(dev, "Failed to allocate mailbox for cmd MAD_DEMUX");
		return -ENOMEM;
	}

	/* Query mad_demux to find out which MADs are handled by internal sma */
	err = FUNC4(dev, 0, mailbox->dma, 0x01 /* subn mgmt class */,
			   MLX4_CMD_MAD_DEMUX_QUERY_RESTR, MLX4_CMD_MAD_DEMUX,
			   MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
	if (err) {
		FUNC6(dev, "MLX4_CMD_MAD_DEMUX: query restrictions failed (%d)\n",
			  err);
		goto out;
	}

	if (FUNC2(dev, mailbox))
		dev->flags |= MLX4_FLAG_SECURE_HOST;

	/* Config mad_demux to handle all MADs returned by the query above */
	err = FUNC3(dev, mailbox->dma, 0x01 /* subn mgmt class */,
		       MLX4_CMD_MAD_DEMUX_CONFIG, MLX4_CMD_MAD_DEMUX,
		       MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
	if (err) {
		FUNC6(dev, "MLX4_CMD_MAD_DEMUX: configure failed (%d)\n", err);
		goto out;
	}

	if (dev->flags & MLX4_FLAG_SECURE_HOST)
		FUNC6(dev, "HCA operating in secure-host mode. SMP firewall activated.\n");
out:
	FUNC5(dev, mailbox);
	return err;
}