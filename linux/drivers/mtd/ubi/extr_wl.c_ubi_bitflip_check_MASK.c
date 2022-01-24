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
struct ubi_wl_entry {TYPE_1__ u; int /*<<< orphan*/  pnum; } ;
struct ubi_device {int peb_count; int /*<<< orphan*/  work_sem; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  free_count; int /*<<< orphan*/  free; int /*<<< orphan*/  scrub; int /*<<< orphan*/  used; struct ubi_wl_entry** lookuptbl; int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  peb_size; int /*<<< orphan*/  peb_buf; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int EUCLEAN ; 
 int UBI_IO_BITFLIPS ; 
 int /*<<< orphan*/  UBI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ubi_device*,int) ; 
 scalar_t__ FUNC2 (struct ubi_device*,struct ubi_wl_entry*) ; 
 scalar_t__ FUNC3 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,struct ubi_wl_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ubi_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 

int FUNC15(struct ubi_device *ubi, int pnum, int force)
{
	int err = 0;
	struct ubi_wl_entry *e;

	if (pnum < 0 || pnum >= ubi->peb_count) {
		err = -EINVAL;
		goto out;
	}

	/*
	 * Pause all parallel work, otherwise it can happen that the
	 * erase worker frees a wl entry under us.
	 */
	FUNC0(&ubi->work_sem);

	/*
	 * Make sure that the wl entry does not change state while
	 * inspecting it.
	 */
	FUNC10(&ubi->wl_lock);
	e = ubi->lookuptbl[pnum];
	if (!e) {
		FUNC11(&ubi->wl_lock);
		err = -ENOENT;
		goto out_resume;
	}

	/*
	 * Does it make sense to check this PEB?
	 */
	if (!FUNC9(ubi, e)) {
		FUNC11(&ubi->wl_lock);
		err = -EBUSY;
		goto out_resume;
	}
	FUNC11(&ubi->wl_lock);

	if (!force) {
		FUNC4(&ubi->buf_mutex);
		err = FUNC12(ubi, ubi->peb_buf, pnum, 0, ubi->peb_size);
		FUNC5(&ubi->buf_mutex);
	}

	if (force || err == UBI_IO_BITFLIPS) {
		/*
		 * Okay, bit flip happened, let's figure out what we can do.
		 */
		FUNC10(&ubi->wl_lock);

		/*
		 * Recheck. We released wl_lock, UBI might have killed the
		 * wl entry under us.
		 */
		e = ubi->lookuptbl[pnum];
		if (!e) {
			FUNC11(&ubi->wl_lock);
			err = -ENOENT;
			goto out_resume;
		}

		/*
		 * Need to re-check state
		 */
		if (!FUNC9(ubi, e)) {
			FUNC11(&ubi->wl_lock);
			err = -EBUSY;
			goto out_resume;
		}

		if (FUNC2(ubi, e)) {
			FUNC6(ubi, e->pnum);
			FUNC14(e, &ubi->scrub);
			FUNC11(&ubi->wl_lock);

			err = FUNC1(ubi, 1);
		} else if (FUNC3(e, &ubi->used)) {
			FUNC7(&e->u.rb, &ubi->used);
			FUNC14(e, &ubi->scrub);
			FUNC11(&ubi->wl_lock);

			err = FUNC1(ubi, 1);
		} else if (FUNC3(e, &ubi->free)) {
			FUNC7(&e->u.rb, &ubi->free);
			ubi->free_count--;
			FUNC11(&ubi->wl_lock);

			/*
			 * This PEB is empty we can schedule it for
			 * erasure right away. No wear leveling needed.
			 */
			err = FUNC8(ubi, e, UBI_UNKNOWN, UBI_UNKNOWN,
					     force ? 0 : 1, true);
		} else {
			FUNC11(&ubi->wl_lock);
			err = -EAGAIN;
		}

		if (!err && !force)
			err = -EUCLEAN;
	} else {
		err = 0;
	}

out_resume:
	FUNC13(&ubi->work_sem);
out:

	return err;
}