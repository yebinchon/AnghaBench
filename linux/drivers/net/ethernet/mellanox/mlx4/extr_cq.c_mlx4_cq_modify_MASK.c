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
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cq_context {void* cq_period; void* cq_max_count; } ;
struct mlx4_cq {int /*<<< orphan*/  cqn; } ;
struct mlx4_cmd_mailbox {struct mlx4_cq_context* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int /*<<< orphan*/ ,int) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, struct mlx4_cq *cq,
		   u16 count, u16 period)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_cq_context *cq_context;
	int err;

	mailbox = FUNC4(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	cq_context = mailbox->buf;
	cq_context->cq_max_count = FUNC2(count);
	cq_context->cq_period    = FUNC2(period);

	err = FUNC3(dev, mailbox, cq->cqn, 1);

	FUNC5(dev, mailbox);
	return err;
}