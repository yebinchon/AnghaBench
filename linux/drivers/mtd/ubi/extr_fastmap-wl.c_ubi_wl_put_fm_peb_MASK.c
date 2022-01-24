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
struct ubi_wl_entry {int pnum; scalar_t__ ec; } ;
struct ubi_device {int peb_count; int /*<<< orphan*/  wl_lock; struct ubi_wl_entry** lookuptbl; } ;

/* Variables and functions */
 int UBI_FM_DATA_VOLUME_ID ; 
 int UBI_FM_SB_VOLUME_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct ubi_device*,struct ubi_wl_entry*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct ubi_device *ubi, struct ubi_wl_entry *fm_e,
		      int lnum, int torture)
{
	struct ubi_wl_entry *e;
	int vol_id, pnum = fm_e->pnum;

	FUNC0("PEB %d", pnum);

	FUNC4(pnum >= 0);
	FUNC4(pnum < ubi->peb_count);

	FUNC2(&ubi->wl_lock);
	e = ubi->lookuptbl[pnum];

	/* This can happen if we recovered from a fastmap the very
	 * first time and writing now a new one. In this case the wl system
	 * has never seen any PEB used by the original fastmap.
	 */
	if (!e) {
		e = fm_e;
		FUNC4(e->ec >= 0);
		ubi->lookuptbl[pnum] = e;
	}

	FUNC3(&ubi->wl_lock);

	vol_id = lnum ? UBI_FM_DATA_VOLUME_ID : UBI_FM_SB_VOLUME_ID;
	return FUNC1(ubi, e, vol_id, lnum, torture, true);
}