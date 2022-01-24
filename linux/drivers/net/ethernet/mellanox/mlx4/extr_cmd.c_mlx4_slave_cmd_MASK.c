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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct mlx4_vhcr_cmd {int flags; void* status; void* out_param; void* token; void* opcode; int /*<<< orphan*/  in_modifier; void* in_param; } ;
struct TYPE_8__ {int /*<<< orphan*/  slave_cmd_mutex; int /*<<< orphan*/  use_events; } ;
struct TYPE_5__ {struct mlx4_vhcr_cmd* vhcr; } ;
struct mlx4_priv {TYPE_4__ cmd; TYPE_1__ mfunc; } ;
struct TYPE_6__ {int /*<<< orphan*/  function; } ;
struct mlx4_dev {TYPE_3__* persist; TYPE_2__ caps; } ;
struct TYPE_7__ {int state; } ;

/* Variables and functions */
 int CMD_POLL_TOKEN ; 
 void* CMD_STAT_BAD_PARAM ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_VHCR_POST ; 
 scalar_t__ MLX4_COMM_TIME ; 
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,int) ; 
 int FUNC6 (struct mlx4_dev*,int,scalar_t__) ; 
 scalar_t__ FUNC7 (struct mlx4_dev*) ; 
 int FUNC8 (struct mlx4_dev*,int /*<<< orphan*/ ,struct mlx4_vhcr_cmd*) ; 
 struct mlx4_priv* FUNC9 (struct mlx4_dev*) ; 
 int FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
			  int out_is_imm, u32 in_modifier, u8 op_modifier,
			  u16 op, unsigned long timeout)
{
	struct mlx4_priv *priv = FUNC9(dev);
	struct mlx4_vhcr_cmd *vhcr = priv->mfunc.vhcr;
	int ret;

	FUNC11(&priv->cmd.slave_cmd_mutex);

	vhcr->in_param = FUNC3(in_param);
	vhcr->out_param = out_param ? FUNC3(*out_param) : 0;
	vhcr->in_modifier = FUNC2(in_modifier);
	vhcr->opcode = FUNC1((((u16) op_modifier) << 12) | (op & 0xfff));
	vhcr->token = FUNC1(CMD_POLL_TOKEN);
	vhcr->status = 0;
	vhcr->flags = !!(priv->cmd.use_events) << 6;

	if (FUNC7(dev)) {
		ret = FUNC8(dev, dev->caps.function, vhcr);
		if (!ret) {
			if (out_is_imm) {
				if (out_param)
					*out_param =
						FUNC0(vhcr->out_param);
				else {
					FUNC5(dev, "response expected while output mailbox is NULL for command 0x%x\n",
						 op);
					vhcr->status = CMD_STAT_BAD_PARAM;
				}
			}
			ret = FUNC10(vhcr->status);
		}
		if (ret &&
		    dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR)
			ret = FUNC6(dev, op, op_modifier);
	} else {
		ret = FUNC4(dev, MLX4_COMM_CMD_VHCR_POST, 0, op,
				    MLX4_COMM_TIME + timeout);
		if (!ret) {
			if (out_is_imm) {
				if (out_param)
					*out_param =
						FUNC0(vhcr->out_param);
				else {
					FUNC5(dev, "response expected while output mailbox is NULL for command 0x%x\n",
						 op);
					vhcr->status = CMD_STAT_BAD_PARAM;
				}
			}
			ret = FUNC10(vhcr->status);
		} else {
			if (dev->persist->state &
			    MLX4_DEVICE_STATE_INTERNAL_ERROR)
				ret = FUNC6(dev, op,
								  op_modifier);
			else
				FUNC5(dev, "failed execution of VHCR_POST command opcode 0x%x\n", op);
		}
	}

	FUNC12(&priv->cmd.slave_cmd_mutex);
	return ret;
}