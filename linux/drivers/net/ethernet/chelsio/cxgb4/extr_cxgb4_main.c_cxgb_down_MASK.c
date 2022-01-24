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
struct adapter {int tid_release_task_busy; int /*<<< orphan*/  flags; int /*<<< orphan*/ * tid_release_head; int /*<<< orphan*/  db_drop_task; int /*<<< orphan*/  db_full_task; int /*<<< orphan*/  tid_release_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_FULL_INIT_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapter)
{
	FUNC0(&adapter->tid_release_task);
	FUNC0(&adapter->db_full_task);
	FUNC0(&adapter->db_drop_task);
	adapter->tid_release_task_busy = false;
	adapter->tid_release_head = NULL;

	FUNC2(adapter);
	FUNC1(adapter);

	adapter->flags &= ~CXGB4_FULL_INIT_DONE;
}