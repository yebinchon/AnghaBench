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
struct ubi_work {int /*<<< orphan*/  list; } ;
struct ubi_device {scalar_t__ works_count; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  bgt_thread; scalar_t__ thread_enabled; int /*<<< orphan*/  works; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ubi_device *ubi, struct ubi_work *wrk)
{
	FUNC1(&ubi->wl_lock);
	FUNC0(&wrk->list, &ubi->works);
	FUNC3(ubi->works_count >= 0);
	ubi->works_count += 1;
	if (ubi->thread_enabled && !FUNC4(ubi))
		FUNC5(ubi->bgt_thread);
	FUNC2(&ubi->wl_lock);
}