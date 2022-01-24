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
typedef  int u32 ;
struct mlx4_roce_gid_entry {int /*<<< orphan*/  raw; } ;
struct mlx4_priv {TYPE_3__* port; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; scalar_t__ buf; } ;
struct TYPE_8__ {int /*<<< orphan*/  raw; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_1__* roce_gids; } ;
struct TYPE_7__ {TYPE_2__ gid_table; } ;
struct TYPE_5__ {int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_MAILBOX_SIZE ; 
 int /*<<< orphan*/  MLX4_ROCE_GID_ENTRY_SIZE ; 
 int MLX4_ROCE_MAX_GIDS ; 
 int /*<<< orphan*/  MLX4_SET_PORT_ETH_OPCODE ; 
 int MLX4_SET_PORT_GID_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,int,int) ; 
 int FUNC4 (struct mlx4_dev*,int,int) ; 
 struct mlx4_priv* FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_4__ zgid_entry ; 

__attribute__((used)) static int FUNC8(struct mlx4_dev *dev, int slave,
				     int port, struct mlx4_cmd_mailbox *mailbox)
{
	struct mlx4_roce_gid_entry *gid_entry_mbox;
	struct mlx4_priv *priv = FUNC5(dev);
	int num_gids, base, offset;
	int i, err;

	num_gids = FUNC4(dev, slave, port);
	base = FUNC3(dev, slave, port);

	FUNC1(mailbox->buf, 0, MLX4_MAILBOX_SIZE);

	FUNC6(&(priv->port[port].gid_table.mutex));
	/* Zero-out gids belonging to that slave in the port GID table */
	for (i = 0, offset = base; i < num_gids; offset++, i++)
		FUNC0(priv->port[port].gid_table.roce_gids[offset].raw,
		       zgid_entry.raw, MLX4_ROCE_GID_ENTRY_SIZE);

	/* Now, copy roce port gids table to mailbox for passing to FW */
	gid_entry_mbox = (struct mlx4_roce_gid_entry *)mailbox->buf;
	for (i = 0; i < MLX4_ROCE_MAX_GIDS; gid_entry_mbox++, i++)
		FUNC0(gid_entry_mbox->raw,
		       priv->port[port].gid_table.roce_gids[i].raw,
		       MLX4_ROCE_GID_ENTRY_SIZE);

	err = FUNC2(dev, mailbox->dma,
		       ((u32)port) | (MLX4_SET_PORT_GID_TABLE << 8),
		       MLX4_SET_PORT_ETH_OPCODE, MLX4_CMD_SET_PORT,
		       MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
	FUNC7(&(priv->port[port].gid_table.mutex));
	return err;
}