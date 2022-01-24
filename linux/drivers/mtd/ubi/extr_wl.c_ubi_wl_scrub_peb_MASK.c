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
struct TYPE_2__ {int /*<<< orphan*/  rb; } ;
struct ubi_wl_entry {int /*<<< orphan*/  pnum; TYPE_1__ u; } ;
struct ubi_device {int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  scrub; int /*<<< orphan*/  used; struct ubi_wl_entry* move_to; int /*<<< orphan*/  erroneous; struct ubi_wl_entry* move_from; struct ubi_wl_entry** lookuptbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(struct ubi_device *ubi, int pnum)
{
	struct ubi_wl_entry *e;

	FUNC9(ubi, "schedule PEB %d for scrubbing", pnum);

retry:
	FUNC6(&ubi->wl_lock);
	e = ubi->lookuptbl[pnum];
	if (e == ubi->move_from || FUNC2(e, &ubi->scrub) ||
				   FUNC2(e, &ubi->erroneous)) {
		FUNC7(&ubi->wl_lock);
		return 0;
	}

	if (e == ubi->move_to) {
		/*
		 * This physical eraseblock was used to move data to. The data
		 * was moved but the PEB was not yet inserted to the proper
		 * tree. We should just wait a little and let the WL worker
		 * proceed.
		 */
		FUNC7(&ubi->wl_lock);
		FUNC0("the PEB %d is not in proper tree, retry", pnum);
		FUNC12();
		goto retry;
	}

	if (FUNC2(e, &ubi->used)) {
		FUNC5(ubi, e, &ubi->used);
		FUNC4(&e->u.rb, &ubi->used);
	} else {
		int err;

		err = FUNC3(ubi, e->pnum);
		if (err) {
			FUNC8(ubi, "PEB %d not found", pnum);
			FUNC10(ubi);
			FUNC7(&ubi->wl_lock);
			return err;
		}
	}

	FUNC11(e, &ubi->scrub);
	FUNC7(&ubi->wl_lock);

	/*
	 * Technically scrubbing is the same as wear-leveling, so it is done
	 * by the WL worker.
	 */
	return FUNC1(ubi, 0);
}