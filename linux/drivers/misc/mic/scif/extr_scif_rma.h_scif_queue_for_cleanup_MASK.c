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
struct scif_window {int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  misc_work; int /*<<< orphan*/  rmalock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct scif_window *window, struct list_head *list)
{
	FUNC2(&scif_info.rmalock);
	FUNC0(&window->list, list);
	FUNC3(&scif_info.rmalock);
	FUNC1(&scif_info.misc_work);
}