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
struct scif_endpt {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  misc_work; int /*<<< orphan*/  eplock; int /*<<< orphan*/  nr_zombies; int /*<<< orphan*/  zombie; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCIFEP_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct scif_endpt *ep, bool eplock_held)
{
	if (!eplock_held)
		FUNC1(&scif_info.eplock);
	FUNC4(&ep->lock);
	ep->state = SCIFEP_ZOMBIE;
	FUNC5(&ep->lock);
	FUNC0(&ep->list, &scif_info.zombie);
	scif_info.nr_zombies++;
	if (!eplock_held)
		FUNC2(&scif_info.eplock);
	FUNC3(&scif_info.misc_work);
}