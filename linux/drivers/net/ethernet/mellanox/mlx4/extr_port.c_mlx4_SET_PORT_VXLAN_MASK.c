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
struct mlx4_set_port_vxlan_context {int modify_flags; int steering; int /*<<< orphan*/  enable_flags; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_set_port_vxlan_context* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_SET_PORT_ETH_OPCODE ; 
 int MLX4_SET_PORT_VXLAN ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  VXLAN_ENABLE ; 
 int VXLAN_ENABLE_MODIFY ; 
 int VXLAN_STEERING_MODIFY ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_set_port_vxlan_context*,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, u8 port, u8 steering, int enable)
{
	int err;
	u32 in_mod;
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_set_port_vxlan_context  *context;

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	context = mailbox->buf;
	FUNC2(context, 0, sizeof(*context));

	context->modify_flags = VXLAN_ENABLE_MODIFY | VXLAN_STEERING_MODIFY;
	if (enable)
		context->enable_flags = VXLAN_ENABLE;
	context->steering  = steering;

	in_mod = MLX4_SET_PORT_VXLAN << 8 | port;
	err = FUNC4(dev, mailbox->dma, in_mod, MLX4_SET_PORT_ETH_OPCODE,
		       MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B,
		       MLX4_CMD_NATIVE);

	FUNC5(dev, mailbox);
	return err;
}