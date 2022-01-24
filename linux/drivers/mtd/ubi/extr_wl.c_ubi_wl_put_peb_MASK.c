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
struct ubi_device {int peb_count; int move_to_put; scalar_t__ erroneous_peb_count; int /*<<< orphan*/  fm_protect; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  used; int /*<<< orphan*/  erroneous; int /*<<< orphan*/  scrub; struct ubi_wl_entry* move_to; int /*<<< orphan*/  move_mutex; struct ubi_wl_entry* move_from; struct ubi_wl_entry** lookuptbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ubi_device*,struct ubi_wl_entry*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 

int FUNC16(struct ubi_device *ubi, int vol_id, int lnum,
		   int pnum, int torture)
{
	int err;
	struct ubi_wl_entry *e;

	FUNC0("PEB %d", pnum);
	FUNC11(pnum >= 0);
	FUNC11(pnum < ubi->peb_count);

	FUNC1(&ubi->fm_protect);

retry:
	FUNC9(&ubi->wl_lock);
	e = ubi->lookuptbl[pnum];
	if (e == ubi->move_from) {
		/*
		 * User is putting the physical eraseblock which was selected to
		 * be moved. It will be scheduled for erasure in the
		 * wear-leveling worker.
		 */
		FUNC0("PEB %d is being moved, wait", pnum);
		FUNC10(&ubi->wl_lock);

		/* Wait for the WL worker by taking the @ubi->move_mutex */
		FUNC3(&ubi->move_mutex);
		FUNC4(&ubi->move_mutex);
		goto retry;
	} else if (e == ubi->move_to) {
		/*
		 * User is putting the physical eraseblock which was selected
		 * as the target the data is moved to. It may happen if the EBA
		 * sub-system already re-mapped the LEB in 'ubi_eba_copy_leb()'
		 * but the WL sub-system has not put the PEB to the "used" tree
		 * yet, but it is about to do this. So we just set a flag which
		 * will tell the WL worker that the PEB is not needed anymore
		 * and should be scheduled for erasure.
		 */
		FUNC0("PEB %d is the target of data moving", pnum);
		FUNC11(!ubi->move_to_put);
		ubi->move_to_put = 1;
		FUNC10(&ubi->wl_lock);
		FUNC14(&ubi->fm_protect);
		return 0;
	} else {
		if (FUNC2(e, &ubi->used)) {
			FUNC8(ubi, e, &ubi->used);
			FUNC6(&e->u.rb, &ubi->used);
		} else if (FUNC2(e, &ubi->scrub)) {
			FUNC8(ubi, e, &ubi->scrub);
			FUNC6(&e->u.rb, &ubi->scrub);
		} else if (FUNC2(e, &ubi->erroneous)) {
			FUNC8(ubi, e, &ubi->erroneous);
			FUNC6(&e->u.rb, &ubi->erroneous);
			ubi->erroneous_peb_count -= 1;
			FUNC11(ubi->erroneous_peb_count >= 0);
			/* Erroneous PEBs should be tortured */
			torture = 1;
		} else {
			err = FUNC5(ubi, e->pnum);
			if (err) {
				FUNC12(ubi, "PEB %d not found", pnum);
				FUNC13(ubi);
				FUNC10(&ubi->wl_lock);
				FUNC14(&ubi->fm_protect);
				return err;
			}
		}
	}
	FUNC10(&ubi->wl_lock);

	err = FUNC7(ubi, e, vol_id, lnum, torture, false);
	if (err) {
		FUNC9(&ubi->wl_lock);
		FUNC15(e, &ubi->used);
		FUNC10(&ubi->wl_lock);
	}

	FUNC14(&ubi->fm_protect);
	return err;
}