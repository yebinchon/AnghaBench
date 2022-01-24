#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ubi_volume {int vol_id; TYPE_2__* eba_tbl; } ;
struct ubi_device {int /*<<< orphan*/  fm_eba_sem; scalar_t__ ro_mode; } ;
struct TYPE_4__ {TYPE_1__* entries; } ;
struct TYPE_3__ {int pnum; } ;

/* Variables and functions */
 int EROFS ; 
 int UBI_LEB_UNMAPPED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ubi_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,int,int) ; 
 int FUNC4 (struct ubi_device*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ubi_device *ubi, struct ubi_volume *vol,
		      int lnum)
{
	int err, pnum, vol_id = vol->vol_id;

	if (ubi->ro_mode)
		return -EROFS;

	err = FUNC2(ubi, vol_id, lnum);
	if (err)
		return err;

	pnum = vol->eba_tbl->entries[lnum].pnum;
	if (pnum < 0)
		/* This logical eraseblock is already unmapped */
		goto out_unlock;

	FUNC0("erase LEB %d:%d, PEB %d", vol_id, lnum, pnum);

	FUNC1(&ubi->fm_eba_sem);
	vol->eba_tbl->entries[lnum].pnum = UBI_LEB_UNMAPPED;
	FUNC5(&ubi->fm_eba_sem);
	err = FUNC4(ubi, vol_id, lnum, pnum, 0);

out_unlock:
	FUNC3(ubi, vol_id, lnum);
	return err;
}