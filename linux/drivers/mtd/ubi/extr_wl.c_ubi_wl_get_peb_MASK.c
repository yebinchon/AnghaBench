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
struct ubi_wl_entry {int pnum; } ;
struct TYPE_2__ {int /*<<< orphan*/  rb_node; } ;
struct ubi_device {scalar_t__ works_count; scalar_t__ vid_hdr_aloffset; scalar_t__ peb_size; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  fm_eba_sem; int /*<<< orphan*/  works; TYPE_1__ free; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,struct ubi_wl_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*,char*,...) ; 
 int FUNC8 (struct ubi_device*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct ubi_wl_entry* FUNC10 (struct ubi_device*) ; 

int FUNC11(struct ubi_device *ubi)
{
	int err;
	struct ubi_wl_entry *e;

retry:
	FUNC0(&ubi->fm_eba_sem);
	FUNC4(&ubi->wl_lock);
	if (!ubi->free.rb_node) {
		if (ubi->works_count == 0) {
			FUNC7(ubi, "no free eraseblocks");
			FUNC6(FUNC1(&ubi->works));
			FUNC5(&ubi->wl_lock);
			return -ENOSPC;
		}

		err = FUNC2(ubi);
		if (err < 0) {
			FUNC5(&ubi->wl_lock);
			return err;
		}
		FUNC5(&ubi->wl_lock);
		FUNC9(&ubi->fm_eba_sem);
		goto retry;

	}
	e = FUNC10(ubi);
	FUNC3(ubi, e);
	FUNC5(&ubi->wl_lock);

	err = FUNC8(ubi, e->pnum, ubi->vid_hdr_aloffset,
				    ubi->peb_size - ubi->vid_hdr_aloffset);
	if (err) {
		FUNC7(ubi, "new PEB %d does not contain all 0xFF bytes", e->pnum);
		return err;
	}

	return e->pnum;
}