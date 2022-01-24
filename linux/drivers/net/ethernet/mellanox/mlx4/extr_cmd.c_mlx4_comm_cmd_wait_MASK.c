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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct mlx4_cmd_context {size_t next; int result; scalar_t__ fw_status; int /*<<< orphan*/  done; int /*<<< orphan*/  token; } ;
struct mlx4_cmd {size_t free_head; int /*<<< orphan*/  event_sem; int /*<<< orphan*/  context_lock; struct mlx4_cmd_context* context; scalar_t__ token_mask; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {struct mlx4_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CMD_STAT_INTERNAL_ERR ; 
 scalar_t__ CMD_STAT_MULTI_FUNC_REQ ; 
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 scalar_t__ FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC8 (struct mlx4_dev*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC18(struct mlx4_dev *dev, u8 vhcr_cmd,
			      u16 param, u16 op, unsigned long timeout)
{
	struct mlx4_cmd *cmd = &FUNC8(dev)->cmd;
	struct mlx4_cmd_context *context;
	unsigned long end;
	int err = 0;

	FUNC3(&cmd->event_sem);

	FUNC13(&cmd->context_lock);
	FUNC0(cmd->free_head < 0);
	context = &cmd->context[cmd->free_head];
	context->token += cmd->token_mask + 1;
	cmd->free_head = context->next;
	FUNC14(&cmd->context_lock);

	FUNC12(&context->done);

	if (FUNC5(dev, vhcr_cmd, param)) {
		/* Only in case the device state is INTERNAL_ERROR,
		 * mlx4_comm_cmd_post returns with an error
		 */
		err = FUNC9(CMD_STAT_INTERNAL_ERR);
		goto out;
	}

	if (!FUNC17(&context->done,
					 FUNC11(timeout))) {
		FUNC10(dev, "communication channel command 0x%x (op=0x%x) timed out\n",
			  vhcr_cmd, op);
		goto out_reset;
	}

	err = context->result;
	if (err && context->fw_status != CMD_STAT_MULTI_FUNC_REQ) {
		FUNC7(dev, "command 0x%x failed: fw status = 0x%x\n",
			 vhcr_cmd, context->fw_status);
		if (FUNC4(op, context->fw_status))
			goto out_reset;
	}

	/* wait for comm channel ready
	 * this is necessary for prevention the race
	 * when switching between event to polling mode
	 * Skipping this section in case the device is in FATAL_ERROR state,
	 * In this state, no commands are sent via the comm channel until
	 * the device has returned from reset.
	 */
	if (!(dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR)) {
		end = FUNC11(timeout) + jiffies;
		while (FUNC1(dev) && FUNC15(jiffies, end))
			FUNC2();
	}
	goto out;

out_reset:
	err = FUNC9(CMD_STAT_INTERNAL_ERR);
	FUNC6(dev->persist);
out:
	FUNC13(&cmd->context_lock);
	context->next = cmd->free_head;
	cmd->free_head = context - cmd->context;
	FUNC14(&cmd->context_lock);

	FUNC16(&cmd->event_sem);
	return err;
}