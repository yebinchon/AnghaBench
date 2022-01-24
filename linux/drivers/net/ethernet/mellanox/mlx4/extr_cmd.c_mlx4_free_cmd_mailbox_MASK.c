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
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  pool; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_cmd_mailbox*) ; 
 TYPE_2__* FUNC2 (struct mlx4_dev*) ; 

void FUNC3(struct mlx4_dev *dev,
			   struct mlx4_cmd_mailbox *mailbox)
{
	if (!mailbox)
		return;

	FUNC0(FUNC2(dev)->cmd.pool, mailbox->buf, mailbox->dma);
	FUNC1(mailbox);
}