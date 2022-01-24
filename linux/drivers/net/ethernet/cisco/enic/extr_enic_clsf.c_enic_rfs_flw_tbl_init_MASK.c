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
struct TYPE_4__ {scalar_t__ toclean; int /*<<< orphan*/  max; int /*<<< orphan*/  free; int /*<<< orphan*/ * ht_head; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_arfs; } ;
struct enic {TYPE_2__ rfs_h; TYPE_1__ config; } ;

/* Variables and functions */
 int ENIC_RFS_FLW_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct enic *enic)
{
	int i;

	FUNC1(&enic->rfs_h.lock);
	for (i = 0; i <= ENIC_RFS_FLW_MASK; i++)
		FUNC0(&enic->rfs_h.ht_head[i]);
	enic->rfs_h.max = enic->config.num_arfs;
	enic->rfs_h.free = enic->rfs_h.max;
	enic->rfs_h.toclean = 0;
}