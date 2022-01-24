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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_set_port_general_context {int /*<<< orphan*/  user_mtu; int /*<<< orphan*/  flags2; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_set_port_general_context* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int /*<<< orphan*/  MLX4_FLAG2_V_USER_MTU_MASK ; 
 int /*<<< orphan*/  MLX4_SET_PORT_ETH_OPCODE ; 
 int MLX4_SET_PORT_GENERAL ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, u8 port, u16 user_mtu)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_set_port_general_context *context;
	u32 in_mod;
	int err;

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	context = mailbox->buf;
	context->flags2 |= MLX4_FLAG2_V_USER_MTU_MASK;
	context->user_mtu = FUNC2(user_mtu);

	in_mod = MLX4_SET_PORT_GENERAL << 8 | port;
	err = FUNC4(dev, mailbox->dma, in_mod, MLX4_SET_PORT_ETH_OPCODE,
		       MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B,
		       MLX4_CMD_WRAPPED);

	FUNC5(dev, mailbox);
	return err;
}