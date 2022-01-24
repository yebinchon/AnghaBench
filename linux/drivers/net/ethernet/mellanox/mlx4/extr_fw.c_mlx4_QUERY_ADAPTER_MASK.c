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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/ * buf; } ;
struct mlx4_adapter {int /*<<< orphan*/  board_id; int /*<<< orphan*/  inta_pin; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_QUERY_ADAPTER ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  QUERY_ADAPTER_INTA_PIN_OFFSET ; 
 int QUERY_ADAPTER_VSD_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC7(struct mlx4_dev *dev, struct mlx4_adapter *adapter)
{
	struct mlx4_cmd_mailbox *mailbox;
	u32 *outbox;
	int err;

#define QUERY_ADAPTER_OUT_SIZE             0x100
#define QUERY_ADAPTER_INTA_PIN_OFFSET      0x10
#define QUERY_ADAPTER_VSD_OFFSET           0x20

	mailbox = FUNC4(dev);
	if (FUNC0(mailbox))
		return FUNC2(mailbox);
	outbox = mailbox->buf;

	err = FUNC5(dev, 0, mailbox->dma, 0, 0, MLX4_CMD_QUERY_ADAPTER,
			   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
	if (err)
		goto out;

	FUNC1(adapter->inta_pin, outbox,    QUERY_ADAPTER_INTA_PIN_OFFSET);

	FUNC3(outbox + QUERY_ADAPTER_VSD_OFFSET / 4,
		     adapter->board_id);

out:
	FUNC6(dev, mailbox);
	return err;
}