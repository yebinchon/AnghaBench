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
struct mlx4_vport_qos_param {int bw_share; int max_avg_bw; int enable; } ;
struct mlx4_set_vport_context {TYPE_1__* qos_p_up; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_set_vport_context* buf; } ;
struct TYPE_2__ {void* enable; void* max_avg_bw; void* bw_share; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_SET_VPORT_QOS ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int MLX4_NUM_UP ; 
 int /*<<< orphan*/  MLX4_SET_VPORT_QOS_SET ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 void* FUNC2 (int) ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, u8 port, u8 vport,
			   struct mlx4_vport_qos_param *in_param)
{
	int i;
	int err;
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_set_vport_context *ctx;

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	ctx = mailbox->buf;

	for (i = 0; i < MLX4_NUM_UP; i++) {
		ctx->qos_p_up[i].bw_share = FUNC2(in_param[i].bw_share);
		ctx->qos_p_up[i].max_avg_bw =
				FUNC2(in_param[i].max_avg_bw);
		ctx->qos_p_up[i].enable =
				FUNC2(in_param[i].enable << 31);
	}

	err = FUNC4(dev, mailbox->dma, (vport << 8) | port,
		       MLX4_SET_VPORT_QOS_SET,
		       MLX4_CMD_SET_VPORT_QOS,
		       MLX4_CMD_TIME_CLASS_A,
		       MLX4_CMD_NATIVE);

	FUNC5(dev, mailbox);
	return err;
}