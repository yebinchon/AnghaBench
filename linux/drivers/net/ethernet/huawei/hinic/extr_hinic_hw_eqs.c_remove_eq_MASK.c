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
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct hinic_eq_work {int /*<<< orphan*/  work; } ;
struct hinic_eq {scalar_t__ type; int /*<<< orphan*/  ceq_tasklet; struct hinic_eq_work aeq_work; struct msix_entry msix_entry; } ;

/* Variables and functions */
 scalar_t__ HINIC_AEQ ; 
 scalar_t__ HINIC_CEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hinic_eq *eq)
{
	struct msix_entry *entry = &eq->msix_entry;

	FUNC2(entry->vector, eq);

	if (eq->type == HINIC_AEQ) {
		struct hinic_eq_work *aeq_work = &eq->aeq_work;

		FUNC0(&aeq_work->work);
	} else if (eq->type == HINIC_CEQ) {
		FUNC3(&eq->ceq_tasklet);
	}

	FUNC1(eq);
}