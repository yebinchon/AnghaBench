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
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_QUERY_IF_STAT ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_C ; 
 int MLX4_QUERY_IF_STAT_RESET ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 struct mlx4_cmd_mailbox* FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

__attribute__((used)) static int FUNC5(struct mlx4_dev *dev,
				u8 counter_index)
{
	struct mlx4_cmd_mailbox *if_stat_mailbox;
	int err;
	u32 if_stat_in_mod = (counter_index & 0xff) | MLX4_QUERY_IF_STAT_RESET;

	if_stat_mailbox = FUNC2(dev);
	if (FUNC0(if_stat_mailbox))
		return FUNC1(if_stat_mailbox);

	err = FUNC3(dev, 0, if_stat_mailbox->dma, if_stat_in_mod, 0,
			   MLX4_CMD_QUERY_IF_STAT, MLX4_CMD_TIME_CLASS_C,
			   MLX4_CMD_NATIVE);

	FUNC4(dev, if_stat_mailbox);
	return err;
}