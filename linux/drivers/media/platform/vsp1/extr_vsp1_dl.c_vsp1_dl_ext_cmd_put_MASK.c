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
struct vsp1_dl_ext_cmd {TYPE_1__* pool; int /*<<< orphan*/  free; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct vsp1_dl_ext_cmd *cmd)
{
	unsigned long flags;

	if (!cmd)
		return;

	/* Reset flags, these mark data usage. */
	cmd->flags = 0;

	FUNC1(&cmd->pool->lock, flags);
	FUNC0(&cmd->free, &cmd->pool->free);
	FUNC2(&cmd->pool->lock, flags);
}