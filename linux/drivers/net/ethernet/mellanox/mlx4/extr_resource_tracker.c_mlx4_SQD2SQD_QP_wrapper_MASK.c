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
typedef  int /*<<< orphan*/  u8 ;
struct mlx4_vhcr {int dummy; } ;
struct mlx4_qp_context {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {struct mlx4_qp_context* buf; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QP_TRANS_SQD2SQD ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_qp_context*) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_qp_context*,struct mlx4_cmd_mailbox*) ; 
 int FUNC2 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*) ; 
 int FUNC5 (struct mlx4_dev*,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct mlx4_dev *dev, int slave,
			    struct mlx4_vhcr *vhcr,
			    struct mlx4_cmd_mailbox *inbox,
			    struct mlx4_cmd_mailbox *outbox,
			    struct mlx4_cmd_info *cmd)
{
	int err;
	struct mlx4_qp_context *context = inbox->buf + 8;

	err = FUNC1(dev, slave, context, inbox);
	if (err)
		return err;
	err = FUNC5(dev, vhcr, inbox, QP_TRANS_SQD2SQD, slave);
	if (err)
		return err;

	FUNC0(dev, vhcr, context);
	FUNC3(dev, inbox, (u8)slave);
	FUNC4(dev, slave, inbox);
	return FUNC2(dev, slave, vhcr, inbox, outbox, cmd);
}