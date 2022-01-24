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
typedef  int u8 ;
typedef  int u32 ;
struct mlx4_set_port_general_context {int pptx; int pfctx; int pprx; int pfcrx; int roce_mode; int /*<<< orphan*/  flags; int /*<<< orphan*/  mtu; } ;
struct TYPE_2__ {int flags2; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_set_port_general_context* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_SET_PORT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  MLX4_CMD_WRAPPED ; 
 int MLX4_DEV_CAP_FLAG2_ROCE_V1_V2 ; 
 int /*<<< orphan*/  MLX4_SET_PORT_ETH_OPCODE ; 
 int MLX4_SET_PORT_GENERAL ; 
 int MLX4_SET_PORT_ROCE_V1_V2 ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  SET_PORT_GEN_ALL_VALID ; 
 int /*<<< orphan*/  SET_PORT_ROCE_2_FLAGS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, u8 port, int mtu,
			  u8 pptx, u8 pfctx, u8 pprx, u8 pfcrx)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_set_port_general_context *context;
	int err;
	u32 in_mod;

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	context = mailbox->buf;
	context->flags = SET_PORT_GEN_ALL_VALID;
	context->mtu = FUNC2(mtu);
	context->pptx = (pptx * (!pfctx)) << 7;
	context->pfctx = pfctx;
	context->pprx = (pprx * (!pfcrx)) << 7;
	context->pfcrx = pfcrx;

	if (dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_ROCE_V1_V2) {
		context->flags |= SET_PORT_ROCE_2_FLAGS;
		context->roce_mode |=
			MLX4_SET_PORT_ROCE_V1_V2 << 4;
	}
	in_mod = MLX4_SET_PORT_GENERAL << 8 | port;
	err = FUNC4(dev, mailbox->dma, in_mod, MLX4_SET_PORT_ETH_OPCODE,
		       MLX4_CMD_SET_PORT, MLX4_CMD_TIME_CLASS_B,
		       MLX4_CMD_WRAPPED);

	FUNC5(dev, mailbox);
	return err;
}