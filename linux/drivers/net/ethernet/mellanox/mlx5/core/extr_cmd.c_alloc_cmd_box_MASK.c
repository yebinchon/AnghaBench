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
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;
struct mlx5_cmd_mailbox {int /*<<< orphan*/ * next; int /*<<< orphan*/  buf; int /*<<< orphan*/  dma; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_cmd_mailbox* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_cmd_mailbox*) ; 
 struct mlx5_cmd_mailbox* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*) ; 

__attribute__((used)) static struct mlx5_cmd_mailbox *FUNC5(struct mlx5_core_dev *dev,
					      gfp_t flags)
{
	struct mlx5_cmd_mailbox *mailbox;

	mailbox = FUNC3(sizeof(*mailbox), flags);
	if (!mailbox)
		return FUNC0(-ENOMEM);

	mailbox->buf = FUNC1(dev->cmd.pool, flags,
				       &mailbox->dma);
	if (!mailbox->buf) {
		FUNC4(dev, "failed allocation\n");
		FUNC2(mailbox);
		return FUNC0(-ENOMEM);
	}
	mailbox->next = NULL;

	return mailbox;
}