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
struct ubi_work {int vol_id; int lnum; int /*<<< orphan*/  torture; struct ubi_wl_entry* e; } ;
struct ubi_wl_entry {int pnum; int /*<<< orphan*/  ec; } ;
struct ubi_device {int beb_rsvd_pebs; scalar_t__ avail_pebs; int bad_peb_count; int good_peb_count; int /*<<< orphan*/  volumes_lock; int /*<<< orphan*/  bad_allowed; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  free_count; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINTR ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct ubi_device*,int) ; 
 int FUNC2 (struct ubi_device*,struct ubi_wl_entry*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,...) ; 
 int FUNC9 (struct ubi_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubi_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubi_device*,struct ubi_wl_entry*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct ubi_device *ubi, struct ubi_work *wl_wrk)
{
	struct ubi_wl_entry *e = wl_wrk->e;
	int pnum = e->pnum;
	int vol_id = wl_wrk->vol_id;
	int lnum = wl_wrk->lnum;
	int err, available_consumed = 0;

	FUNC0("erase PEB %d EC %d LEB %d:%d",
	       pnum, e->ec, wl_wrk->vol_id, wl_wrk->lnum);

	err = FUNC6(ubi, e, wl_wrk->torture);
	if (!err) {
		FUNC4(&ubi->wl_lock);
		FUNC14(e, &ubi->free);
		ubi->free_count++;
		FUNC5(&ubi->wl_lock);

		/*
		 * One more erase operation has happened, take care about
		 * protected physical eraseblocks.
		 */
		FUNC3(ubi);

		/* And take care about wear-leveling */
		err = FUNC1(ubi, 1);
		return err;
	}

	FUNC8(ubi, "failed to erase PEB %d, error %d", pnum, err);

	if (err == -EINTR || err == -ENOMEM || err == -EAGAIN ||
	    err == -EBUSY) {
		int err1;

		/* Re-schedule the LEB for erasure */
		err1 = FUNC2(ubi, e, vol_id, lnum, 0, false);
		if (err1) {
			FUNC13(ubi, e);
			err = err1;
			goto out_ro;
		}
		return err;
	}

	FUNC13(ubi, e);
	if (err != -EIO)
		/*
		 * If this is not %-EIO, we have no idea what to do. Scheduling
		 * this physical eraseblock for erasure again would cause
		 * errors again and again. Well, lets switch to R/O mode.
		 */
		goto out_ro;

	/* It is %-EIO, the PEB went bad */

	if (!ubi->bad_allowed) {
		FUNC8(ubi, "bad physical eraseblock %d detected", pnum);
		goto out_ro;
	}

	FUNC4(&ubi->volumes_lock);
	if (ubi->beb_rsvd_pebs == 0) {
		if (ubi->avail_pebs == 0) {
			FUNC5(&ubi->volumes_lock);
			FUNC8(ubi, "no reserved/available physical eraseblocks");
			goto out_ro;
		}
		ubi->avail_pebs -= 1;
		available_consumed = 1;
	}
	FUNC5(&ubi->volumes_lock);

	FUNC10(ubi, "mark PEB %d as bad", pnum);
	err = FUNC9(ubi, pnum);
	if (err)
		goto out_ro;

	FUNC4(&ubi->volumes_lock);
	if (ubi->beb_rsvd_pebs > 0) {
		if (available_consumed) {
			/*
			 * The amount of reserved PEBs increased since we last
			 * checked.
			 */
			ubi->avail_pebs += 1;
			available_consumed = 0;
		}
		ubi->beb_rsvd_pebs -= 1;
	}
	ubi->bad_peb_count += 1;
	ubi->good_peb_count -= 1;
	FUNC7(ubi);
	if (available_consumed)
		FUNC12(ubi, "no PEBs in the reserved pool, used an available PEB");
	else if (ubi->beb_rsvd_pebs)
		FUNC10(ubi, "%d PEBs left in the reserve",
			ubi->beb_rsvd_pebs);
	else
		FUNC12(ubi, "last PEB from the reserve was used");
	FUNC5(&ubi->volumes_lock);

	return err;

out_ro:
	if (available_consumed) {
		FUNC4(&ubi->volumes_lock);
		ubi->avail_pebs += 1;
		FUNC5(&ubi->volumes_lock);
	}
	FUNC11(ubi);
	return err;
}