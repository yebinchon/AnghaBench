#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct mlx4_cmd_context {size_t next; scalar_t__ fw_status; int result; scalar_t__ out_param; int /*<<< orphan*/  done; int /*<<< orphan*/  token; } ;
struct mlx4_cmd {size_t free_head; int /*<<< orphan*/  event_sem; int /*<<< orphan*/  context_lock; struct mlx4_cmd_context* context; scalar_t__ token_mask; } ;
struct TYPE_4__ {struct mlx4_cmd cmd; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CMD_STAT_BAD_SIZE ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ MLX4_CMD_NOP ; 
 scalar_t__ MLX4_CMD_SENSE_PORT ; 
 scalar_t__ MLX4_CMD_SET_PORT ; 
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 scalar_t__ MLX4_SET_PORT_IB_OPCODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int FUNC3 (struct mlx4_dev*,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mlx4_dev*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*,scalar_t__,...) ; 
 int FUNC7 (struct mlx4_dev*,scalar_t__,scalar_t__) ; 
 TYPE_2__* FUNC8 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 long FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
			 int out_is_imm, u32 in_modifier, u8 op_modifier,
			 u16 op, unsigned long timeout)
{
	struct mlx4_cmd *cmd = &FUNC8(dev)->cmd;
	struct mlx4_cmd_context *context;
	long ret_wait;
	int err = 0;

	FUNC1(&cmd->event_sem);

	FUNC12(&cmd->context_lock);
	FUNC0(cmd->free_head < 0);
	context = &cmd->context[cmd->free_head];
	context->token += cmd->token_mask + 1;
	cmd->free_head = context->next;
	FUNC13(&cmd->context_lock);

	if (out_is_imm && !out_param) {
		FUNC6(dev, "response expected while output mailbox is NULL for command 0x%x\n",
			 op);
		err = -EINVAL;
		goto out;
	}

	FUNC11(&context->done);

	err = FUNC3(dev, in_param, out_param ? *out_param : 0,
			    in_modifier, op_modifier, op, context->token, 1);
	if (err)
		goto out_reset;

	if (op == MLX4_CMD_SENSE_PORT) {
		ret_wait =
			FUNC15(&context->done,
								  FUNC10(timeout));
		if (ret_wait < 0) {
			context->fw_status = 0;
			context->out_param = 0;
			context->result = 0;
		}
	} else {
		ret_wait = (long)FUNC16(&context->done,
							     FUNC10(timeout));
	}
	if (!ret_wait) {
		FUNC9(dev, "command 0x%x timed out (go bit not cleared)\n",
			  op);
		if (op == MLX4_CMD_NOP) {
			err = -EBUSY;
			goto out;
		} else {
			err = -EIO;
			goto out_reset;
		}
	}

	err = context->result;
	if (err) {
		/* Since we do not want to have this error message always
		 * displayed at driver start when there are ConnectX2 HCAs
		 * on the host, we deprecate the error message for this
		 * specific command/input_mod/opcode_mod/fw-status to be debug.
		 */
		if (op == MLX4_CMD_SET_PORT &&
		    (in_modifier == 1 || in_modifier == 2) &&
		    op_modifier == MLX4_SET_PORT_IB_OPCODE &&
		    context->fw_status == CMD_STAT_BAD_SIZE)
			FUNC5(dev, "command 0x%x failed: fw status = 0x%x\n",
				 op, context->fw_status);
		else
			FUNC6(dev, "command 0x%x failed: fw status = 0x%x\n",
				 op, context->fw_status);
		if (dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR)
			err = FUNC7(dev, op, op_modifier);
		else if (FUNC2(op, context->fw_status))
			goto out_reset;

		goto out;
	}

	if (out_is_imm)
		*out_param = context->out_param;

out_reset:
	if (err)
		err = FUNC4(dev, op, op_modifier, err);
out:
	FUNC12(&cmd->context_lock);
	context->next = cmd->free_head;
	cmd->free_head = context - cmd->context;
	FUNC13(&cmd->context_lock);

	FUNC14(&cmd->event_sem);
	return err;
}