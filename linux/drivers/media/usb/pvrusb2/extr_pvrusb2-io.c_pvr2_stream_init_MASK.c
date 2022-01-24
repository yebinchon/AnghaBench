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
struct pvr2_stream {int /*<<< orphan*/  idle_list; int /*<<< orphan*/  ready_list; int /*<<< orphan*/  queued_list; int /*<<< orphan*/  mutex; int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pvr2_stream *sp)
{
	FUNC2(&sp->list_lock);
	FUNC1(&sp->mutex);
	FUNC0(&sp->queued_list);
	FUNC0(&sp->ready_list);
	FUNC0(&sp->idle_list);
}