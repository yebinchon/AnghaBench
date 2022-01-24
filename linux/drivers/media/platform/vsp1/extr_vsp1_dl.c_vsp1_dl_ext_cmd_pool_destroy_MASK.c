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
struct vsp1_dl_cmd_pool {struct vsp1_dl_cmd_pool* cmds; int /*<<< orphan*/  dma; scalar_t__ mem; int /*<<< orphan*/  size; TYPE_1__* vsp1; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vsp1_dl_cmd_pool*) ; 

__attribute__((used)) static void FUNC2(struct vsp1_dl_cmd_pool *pool)
{
	if (!pool)
		return;

	if (pool->mem)
		FUNC0(pool->vsp1->bus_master, pool->size, pool->mem,
			    pool->dma);

	FUNC1(pool->cmds);
	FUNC1(pool);
}