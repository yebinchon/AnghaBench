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
struct cqhci_host {int waiting_for_idle; int /*<<< orphan*/  lock; scalar_t__ recovery_halt; int /*<<< orphan*/  qcnt; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC2(struct cqhci_host *cq_host, int *ret)
{
	unsigned long flags;
	bool is_idle;

	FUNC0(&cq_host->lock, flags);
	is_idle = !cq_host->qcnt || cq_host->recovery_halt;
	*ret = cq_host->recovery_halt ? -EBUSY : 0;
	cq_host->waiting_for_idle = !is_idle;
	FUNC1(&cq_host->lock, flags);

	return is_idle;
}