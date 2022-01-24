#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rb; } ;
struct ubi_wl_entry {int /*<<< orphan*/  pnum; TYPE_1__ u; } ;
struct ubi_fm_pool {size_t size; size_t max_size; scalar_t__ used; int /*<<< orphan*/ * pebs; } ;
struct TYPE_6__ {int /*<<< orphan*/  rb_node; } ;
struct ubi_device {int free_count; int beb_rsvd_pebs; int /*<<< orphan*/  wl_lock; TYPE_2__ free; struct ubi_fm_pool fm_pool; struct ubi_fm_pool fm_wl_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL_FREE_MAX_DIFF ; 
 struct ubi_wl_entry* FUNC0 (struct ubi_device*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*,struct ubi_fm_pool*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,struct ubi_wl_entry*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ubi_wl_entry* FUNC6 (struct ubi_device*) ; 

void FUNC7(struct ubi_device *ubi)
{
	struct ubi_fm_pool *wl_pool = &ubi->fm_wl_pool;
	struct ubi_fm_pool *pool = &ubi->fm_pool;
	struct ubi_wl_entry *e;
	int enough;

	FUNC4(&ubi->wl_lock);

	FUNC2(ubi, wl_pool);
	FUNC2(ubi, pool);

	wl_pool->size = 0;
	pool->size = 0;

	for (;;) {
		enough = 0;
		if (pool->size < pool->max_size) {
			if (!ubi->free.rb_node)
				break;

			e = FUNC6(ubi);
			if (!e)
				break;

			pool->pebs[pool->size] = e->pnum;
			pool->size++;
		} else
			enough++;

		if (wl_pool->size < wl_pool->max_size) {
			if (!ubi->free.rb_node ||
			   (ubi->free_count - ubi->beb_rsvd_pebs < 5))
				break;

			e = FUNC0(ubi, &ubi->free, WL_FREE_MAX_DIFF);
			FUNC3(ubi, e, &ubi->free);
			FUNC1(&e->u.rb, &ubi->free);
			ubi->free_count--;

			wl_pool->pebs[wl_pool->size] = e->pnum;
			wl_pool->size++;
		} else
			enough++;

		if (enough == 2)
			break;
	}

	wl_pool->used = 0;
	pool->used = 0;

	FUNC5(&ubi->wl_lock);
}