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
struct mlx5_core_dev {int dummy; } ;
struct mlx5_cmd_prot_block {int /*<<< orphan*/  token; int /*<<< orphan*/  block_num; int /*<<< orphan*/  next; } ;
struct mlx5_cmd_msg {int len; struct mlx5_cmd_mailbox* next; } ;
struct mlx5_cmd_mailbox {struct mlx5_cmd_mailbox* next; int /*<<< orphan*/  dma; struct mlx5_cmd_prot_block* buf; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_cmd_msg* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx5_cmd_mailbox*) ; 
 int FUNC2 (struct mlx5_cmd_mailbox*) ; 
 struct mlx5_cmd_mailbox* FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,struct mlx5_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_cmd_msg*) ; 
 struct mlx5_cmd_msg* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlx5_cmd_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*,char*) ; 

__attribute__((used)) static struct mlx5_cmd_msg *FUNC11(struct mlx5_core_dev *dev,
					       gfp_t flags, int size,
					       u8 token)
{
	struct mlx5_cmd_mailbox *tmp, *head = NULL;
	struct mlx5_cmd_prot_block *block;
	struct mlx5_cmd_msg *msg;
	int err;
	int n;
	int i;

	msg = FUNC8(sizeof(*msg), flags);
	if (!msg)
		return FUNC0(-ENOMEM);

	msg->len = size;
	n = FUNC9(msg);

	for (i = 0; i < n; i++) {
		tmp = FUNC3(dev, flags);
		if (FUNC1(tmp)) {
			FUNC10(dev, "failed allocating block\n");
			err = FUNC2(tmp);
			goto err_alloc;
		}

		block = tmp->buf;
		tmp->next = head;
		block->next = FUNC5(tmp->next ? tmp->next->dma : 0);
		block->block_num = FUNC4(n - i - 1);
		block->token = token;
		head = tmp;
	}
	msg->next = head;
	return msg;

err_alloc:
	while (head) {
		tmp = head->next;
		FUNC6(dev, head);
		head = tmp;
	}
	FUNC7(msg);

	return FUNC0(err);
}