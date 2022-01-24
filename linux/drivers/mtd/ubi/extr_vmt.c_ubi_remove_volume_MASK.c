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
struct ubi_volume_desc {scalar_t__ mode; struct ubi_volume* vol; } ;
struct ubi_volume {int vol_id; int reserved_pebs; int ref_count; int /*<<< orphan*/  dev; int /*<<< orphan*/  cdev; struct ubi_device* ubi; } ;
struct ubi_device {int rsvd_pebs; int avail_pebs; int vol_count; int /*<<< orphan*/  volumes_lock; struct ubi_volume** volumes; scalar_t__ ro_mode; int /*<<< orphan*/  ubi_num; } ;

/* Variables and functions */
 int EBUSY ; 
 int EROFS ; 
 scalar_t__ UBI_EXCLUSIVE ; 
 int /*<<< orphan*/  UBI_VOLUME_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct ubi_device*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ubi_device*,struct ubi_volume*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ubi_device*,struct ubi_volume*,int /*<<< orphan*/ ) ; 

int FUNC12(struct ubi_volume_desc *desc, int no_vtbl)
{
	struct ubi_volume *vol = desc->vol;
	struct ubi_device *ubi = vol->ubi;
	int i, err, vol_id = vol->vol_id, reserved_pebs = vol->reserved_pebs;

	FUNC1("remove device %d, volume %d", ubi->ubi_num, vol_id);
	FUNC6(desc->mode == UBI_EXCLUSIVE);
	FUNC6(vol == ubi->volumes[vol_id]);

	if (ubi->ro_mode)
		return -EROFS;

	FUNC4(&ubi->volumes_lock);
	if (vol->ref_count > 1) {
		/*
		 * The volume is busy, probably someone is reading one of its
		 * sysfs files.
		 */
		err = -EBUSY;
		goto out_unlock;
	}
	ubi->volumes[vol_id] = NULL;
	FUNC5(&ubi->volumes_lock);

	if (!no_vtbl) {
		err = FUNC7(ubi, vol_id, NULL);
		if (err)
			goto out_err;
	}

	for (i = 0; i < vol->reserved_pebs; i++) {
		err = FUNC8(ubi, vol, i);
		if (err)
			goto out_err;
	}

	FUNC0(&vol->cdev, &vol->dev);
	FUNC2(&vol->dev);

	FUNC4(&ubi->volumes_lock);
	ubi->rsvd_pebs -= reserved_pebs;
	ubi->avail_pebs += reserved_pebs;
	FUNC10(ubi);
	ubi->vol_count -= 1;
	FUNC5(&ubi->volumes_lock);

	FUNC11(ubi, vol, UBI_VOLUME_REMOVED);
	if (!no_vtbl)
		FUNC3(ubi);

	return 0;

out_err:
	FUNC9(ubi, "cannot remove volume %d, error %d", vol_id, err);
	FUNC4(&ubi->volumes_lock);
	ubi->volumes[vol_id] = vol;
out_unlock:
	FUNC5(&ubi->volumes_lock);
	return err;
}